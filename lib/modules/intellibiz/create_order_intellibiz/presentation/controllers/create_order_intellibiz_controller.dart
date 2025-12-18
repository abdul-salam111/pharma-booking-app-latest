// ignore_for_file: avoid_print, prefer_typing_uninitialized_variables

import 'package:pharma_booking_app/modules/intellibiz/all_products_intellibiz/controllers/all_products_intellibiz_controller.dart';
import 'package:uuid/uuid.dart';
import '../../../../../core/utils/current_user_helper.dart';

import '../../../../common/presentations/home/presentation/barrel.dart';
import '../../../../common/domain/create_order_domain/domain/usecases/local_usecases/manage_order_local_usecases/create_order_local_usecase.dart';
import '../../../../common/domain/create_order_domain/domain/usecases/local_usecases/manage_order_local_usecases/update_order_local_usecase.dart';

// ════════════════════════════════════════════════════════════
// 👇 STEP 1: YEH IMPORT ADD KARO (Line 12 par)
// ════════════════════════════════════════════════════════════
import 'package:pharma_booking_app/core/utils/product_calculation_utils.dart';
// ☝️ Yeh line add kar do!

/// Controller for managing order creation and editing functionality
/// Handles product selection, customer details, order calculations, and database operations
class CreateOrderIntellibizController extends GetxController {
  final CreateOrderLocalUsecase createOrderLocalUsecase;
  final UpdateOrderLocalUsecase updateOrderLocalUsecase;

  CreateOrderIntellibizController({
    required this.createOrderLocalUsecase,
    required this.updateOrderLocalUsecase,
  });

  // ========================================================================
  // VARIABLES - Customer & Location Details
  // ========================================================================

  final Rx<GetAreaListModel?> selectedSector = Rx<GetAreaListModel?>(null);
  final Rx<GetSubAreaListModel?> selectedTown = Rx<GetSubAreaListModel?>(null);
  final Rx<GetCustomersModel?> selectedCustomer = Rx<GetCustomersModel?>(null);
  var uuid = Uuid();

  // ========================================================================
  // VARIABLES - UI Controllers
  // ========================================================================

  final TextEditingController searchController = TextEditingController();
  final FocusNode searchFocusNode = FocusNode();

  // ========================================================================
  // VARIABLES - Product & Order Data
  // ========================================================================

  RxList<OrderProducts> selectedProducts = <OrderProducts>[].obs;
  RxList<GetAllProductsModel> getAllProducts = <GetAllProductsModel>[].obs;
  RxList<CompaniesModel> getCompaniesModel = <CompaniesModel>[].obs;

  // ========================================================================
  // VARIABLES - Order Calculations
  // ========================================================================

  RxDouble totalAmount = 0.0.obs;
  RxInt totalItems = 0.obs;
  RxBool isLoading = false.obs;
  RxBool isSaving = false.obs;

  // ========================================================================
  // VARIABLES - Company Grouping & Organization
  // ========================================================================

  RxMap<String, List<OrderProducts>> groupedProductsByCompany =
      <String, List<OrderProducts>>{}.obs;
  RxList<CompaniesModel> companiesWithOrders = <CompaniesModel>[].obs;
  RxMap<String, double> companyTotals = <String, double>{}.obs;
  RxMap<String, int> companyItemCounts = <String, int>{}.obs;
  RxList<CompaniesModel> filteredCompanies = <CompaniesModel>[].obs;

  // ========================================================================
  // VARIABLES - Edit Order Functionality
  // ========================================================================

  bool isEditing = false;
  var existingOrderId;
  var existingOrder;

  // ========================================================================
  // LIFECYCLE METHODS
  // ========================================================================

  @override
  void onInit() {
    super.onInit();
    _receiveAndProcessData();
    _setupListeners();
  }

  @override
  void onClose() {
    searchController.dispose();
    searchFocusNode.dispose();
    super.onClose();
  }

  // ========================================================================
  // INITIALIZATION METHODS
  // ========================================================================

  void _setupListeners() {
    searchController.addListener(filterCompanies);
  }

  void _receiveAndProcessData() {
    try {
      final arguments = Get.arguments as Map<String, dynamic>?;

      if (arguments != null) {
        _extractCustomerDetails(arguments);
        _extractProductData(arguments);
        _extractEditModeData(arguments);
      }

      _checkAllProductsController();
      _processOrderData();
    } catch (e) {
      print('Error receiving data: $e');
      _showErrorSnackbar('Error loading order data', e.toString());
    }
  }

  void _extractCustomerDetails(Map<String, dynamic> arguments) {
    if (arguments['selectedCustomer'] != null) {
      selectedCustomer.value =
          arguments['selectedCustomer'] as GetCustomersModel?;
    }
    if (arguments['selectedTown'] != null) {
      selectedTown.value = arguments['selectedTown'] as GetSubAreaListModel?;
    }
    if (arguments['selectedSector'] != null) {
      selectedSector.value = arguments['selectedSector'] as GetAreaListModel?;
    }
  }

  void _extractProductData(Map<String, dynamic> arguments) {
    if (arguments['selectedProducts'] != null) {
      selectedProducts.value = List<OrderProducts>.from(
        arguments['selectedProducts'],
      );
    }

    if (arguments['getAllProducts'] != null) {
      getAllProducts.value = List<GetAllProductsModel>.from(
        arguments['getAllProducts'],
      );
    }

    if (arguments['getCompaniesModel'] != null) {
      getCompaniesModel.value = List<CompaniesModel>.from(
        arguments['getCompaniesModel'],
      );
    }
  }

  void _extractEditModeData(Map<String, dynamic> arguments) {
    isEditing = arguments['isEditing'] ?? false;
    existingOrderId = arguments['orderId'];
    existingOrder = arguments['existingOrder'] as OrderItemsForLocal?;
  }

  void _checkAllProductsController() {
    if (Get.isRegistered<AllProductsIntellibizController>()) {
      final allProductsController = Get.find<AllProductsIntellibizController>();

      if (allProductsController.selectedProducts.isNotEmpty) {
        selectedProducts.value = allProductsController.selectedProducts
            .toList();
        totalAmount.value = allProductsController.totalAmount.value;
        totalItems.value = allProductsController.totalItems.value;
      }
    }
  }

  // ========================================================================
  // DATA PROCESSING METHODS
  // ========================================================================

  void _processOrderData() {
    _calculateTotals();
    _groupProductsByCompany();
    _getCompaniesWithOrders();
    _calculateCompanyTotals();
    filteredCompanies.value = List.from(companiesWithOrders);
  }

  void _calculateTotals() {
    totalAmount.value = selectedProducts.fold(
      0.0,
      (sum, product) => sum + calculateProductTotal(product),
    );

    totalItems.value = selectedProducts.length;
  }

  void _groupProductsByCompany() {
    final Map<String, List<OrderProducts>> grouped = {};

    for (var product in selectedProducts) {
      final companyId = product.companyOrderId.toString();

      if (!grouped.containsKey(companyId)) {
        grouped[companyId] = [];
      }

      grouped[companyId]!.add(product);
    }

    groupedProductsByCompany.value = grouped;
  }

  void _getCompaniesWithOrders() {
    final List<CompaniesModel> companies = [];

    for (var companyId in groupedProductsByCompany.keys) {
      final company = getCompaniesModel.firstWhere(
        (c) => c.id.toString() == companyId,
        orElse: () => CompaniesModel(
          id: int.tryParse(companyId),
          name: 'Unknown Company',
        ),
      );
      companies.add(company);
    }

    companiesWithOrders.value = companies;
  }

  void _calculateCompanyTotals() {
    final Map<String, double> totals = {};
    final Map<String, int> itemCounts = {};

    for (var entry in groupedProductsByCompany.entries) {
      final companyId = entry.key;
      final products = entry.value;

      totals[companyId] = products.fold(
        0.0,
        (sum, product) => sum + calculateProductTotal(product),
      );

      itemCounts[companyId] = products.length;
    }

    companyTotals.value = totals;
    companyItemCounts.value = itemCounts;
  }

  // ════════════════════════════════════════════════════════════
  // 👇 STEP 2: YEH 3 METHODS REPLACE KARO (Line 330 ke around)
  //            Purane methods ko delete kar ke yeh add karo
  // ════════════════════════════════════════════════════════════

  // ✅ Method 1: Final amount with discount - UPDATED
  double calculateProductTotal(OrderProducts product) {
    // Product details nikalo
    final productDetails = getAllProducts.firstWhere(
      (p) => p.id.toString() == product.productId,
      orElse: () => GetAllProductsModel(),
    );

    // Utility class se calculation karo
    final result = ProductCalculationUtils.calculateFromOrderProduct(
      orderProduct: product,
      productDetails: productDetails,
    );

    return result.finalAmount; // Final amount with discount
  }

  // ✅ Method 2: Subtotal (before discount) - UPDATED
  double getProductSubtotal(OrderProducts product) {
    final productDetails = getAllProducts.firstWhere(
      (p) => p.id.toString() == product.productId,
      orElse: () => GetAllProductsModel(),
    );

    final result = ProductCalculationUtils.calculateFromOrderProduct(
      orderProduct: product,
      productDetails: productDetails,
    );

    return result.subtotal; // Amount before discount
  }

  // ✅ Method 3: Discount amount - UPDATED
  double getProductDiscountAmount(OrderProducts product) {
    final productDetails = getAllProducts.firstWhere(
      (p) => p.id.toString() == product.productId,
      orElse: () => GetAllProductsModel(),
    );

    final result = ProductCalculationUtils.calculateFromOrderProduct(
      orderProduct: product,
      productDetails: productDetails,
    );

    return result.discountAmount; // Discount amount
  }

  // ☝️ YEH METHODS YAHAN TAK REPLACE KARO
  // ════════════════════════════════════════════════════════════

  // ========================================================================
  // GETTER METHODS
  // ========================================================================

  String getCompanyName(String companyId) {
    final company = getCompaniesModel.firstWhere(
      (c) => c.id.toString() == companyId,
      orElse: () => CompaniesModel(name: 'Unknown Company'),
    );
    return company.name ?? 'Unknown Company';
  }

  double getCompanyTotal(String companyId) {
    return companyTotals[companyId] ?? 0.0;
  }

  int getCompanyItemCount(String companyId) {
    return companyItemCounts[companyId] ?? 0;
  }

  List<OrderProducts> getCompanyProducts(String companyId) {
    return groupedProductsByCompany[companyId] ?? [];
  }

  // ========================================================================
  // SEARCH & FILTER METHODS
  // ========================================================================

  void filterCompanies() {
    final query = searchController.text.toLowerCase();

    if (query.isEmpty) {
      filteredCompanies.value = List.from(companiesWithOrders);
    } else {
      filteredCompanies.value = companiesWithOrders.where((company) {
        return company.name?.toLowerCase().contains(query) == true;
      }).toList();
    }
  }

  void clearSearch() {
    searchController.clear();
    filteredCompanies.value = List.from(companiesWithOrders);
  }

  // ========================================================================
  // UPDATE METHODS
  // ========================================================================

  void updateOrderData(
    List<OrderProducts> newProducts,
    double newTotalAmount,
    int newTotalItems,
  ) {
    selectedProducts.value = newProducts;
    totalAmount.value = newTotalAmount;
    totalItems.value = newTotalItems;

    _processOrderData();
    update();
  }

  // ========================================================================
  // NAVIGATION METHODS
  // ========================================================================

  void goToAllProducts([String? companyId]) async {
    final String softwareVersion = CurrentUserHelper.softwareVersion;
    if (softwareVersion == "2") {
      if (!Get.isRegistered<AllProductsIntellibizController>()) {
        Get.lazyPut(() => AllProductsIntellibizController());
      }

      Get.toNamed(
        Routes.ALL_PRODUCTS_INTELLIBIZ,
        arguments: [
          selectedCustomer.value,
          selectedTown.value,
          selectedSector.value,
          getAllProducts.toList(),
          getCompaniesModel.toList(),
          selectedProducts.toList(),
        ],
      );

      _setCompanyFilterAfterNavigation(companyId);
    } else {
      if (!Get.isRegistered<AllProductsIntellibizController>()) {}

      Get.toNamed(
        Routes.ALL_PRODUCTS,
        arguments: [
          selectedCustomer.value,
          selectedTown.value,
          selectedSector.value,
          getAllProducts.toList(),
          getCompaniesModel.toList(),
          selectedProducts.toList(),
        ],
      );

      _setCompanyFilterAfterNavigation(companyId);
    }
  }

  void _setCompanyFilterAfterNavigation(String? companyId) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      try {
        final allProductsController =
            Get.find<AllProductsIntellibizController>();

        if (companyId != null && companyId.isNotEmpty) {
          final company = getCompaniesModel.firstWhere(
            (c) => c.id.toString() == companyId,
            orElse: () => CompaniesModel(name: 'Unknown Company'),
          );

          allProductsController.selectedCompanyId.value = companyId;
          allProductsController.selectedCompany.value =
              company.name ?? 'Unknown Company';
        } else {
          allProductsController.selectedCompanyId.value = "";
          allProductsController.selectedCompany.value = "All Companies";
        }

        allProductsController.filterProducts();
        allProductsController.calculateTotals();
      } catch (e) {
        print('Error setting company filter: $e');
      }
    });
  }

  void addMoreProducts() {
    if (isEditing) {
      if (!Get.isRegistered<AllProductsIntellibizController>()) {
        Get.toNamed(
          Routes.ALL_PRODUCTS,
          arguments: [
            selectedCustomer.value,
            selectedTown.value,
            selectedSector.value,
            getAllProducts,
            getCompaniesModel,
            selectedProducts,
          ],
        );
      } else {
        final allProductsController =
            Get.find<AllProductsIntellibizController>();
        allProductsController.selectedCompanyId.value = "";
        allProductsController.selectedCompany.value = "All Companies";
        allProductsController.refreshData();
        Get.toNamed(
          Routes.ALL_PRODUCTS,
          arguments: [
            selectedCustomer.value,
            selectedTown.value,
            selectedSector.value,
            getAllProducts,
            getCompaniesModel,
            selectedProducts,
          ],
        );
      }
    } else {
      final allProductsController = Get.find<AllProductsIntellibizController>();
      allProductsController.selectedCompanyId.value = "";
      allProductsController.selectedCompany.value = "All Companies";
      Get.back();
    }
  }

  void closeOrder() {
    Get.defaultDialog(
      title: "Confirmation",
      middleText: "Are you sure, you want to close?",
      backgroundColor: Colors.white,
      titleStyle: const TextStyle(fontWeight: FontWeight.bold),
      middleTextStyle: const TextStyle(fontSize: 16),
      radius: 10,
      textCancel: "Cancel",
      textConfirm: "Yes",
      confirmTextColor: Colors.white,
      buttonColor: Colors.blue,
      cancelTextColor: Colors.red,
      onConfirm: () {
        Get.offAllNamed(Routes.HOME);
      },
      onCancel: () {},
    );
  }

  // ========================================================================
  // DATABASE OPERATIONS
  // ========================================================================

  Future<void> saveOrder() async {
    try {
      isSaving.value = true;

      final order = OrderItemsForLocal(
        customerAddress:
            "${selectedSector.value!.name} - ${selectedTown.value!.name}",
        customerId: selectedCustomer.value!.id.toString(),
        customerName: selectedCustomer.value!.customerName!,
        companies: _prepareCompaniesForOrder(),
        orderDate: DateTime.now(),
        totalAmount: totalAmount.value,
        totalItems: totalItems.value,
        guid: uuid.v1(),
      );

      final localOrderResponse = await createOrderLocalUsecase.call(order);

      final orderId = localOrderResponse.fold(
        (error) => -1,
        (success) => success,
      );

      print('Order saved with ID: $orderId');

      if (orderId >= 0) {
        _showSuccessSnackbar('Order saved successfully');
        Get.offAllNamed(Routes.HOME);
      } else {
        _showErrorSnackbar('Failed to save order', 'Database operation failed');
      }
    } catch (e) {
      print('Error saving order: $e');
      _showErrorSnackbar('Failed to save order', e.toString());
    } finally {
      isSaving.value = false;
    }
  }

  Future<void> updateOrder() async {
    try {
      isSaving.value = true;

      if (existingOrder == null || existingOrderId == null) {
        throw Exception('Existing order data not found');
      }

      final updatedOrder = OrderItemsForLocal(
        orderId: existingOrderId,
        customerAddress:
            "${selectedSector.value!.name} - ${selectedTown.value!.name}",
        customerId: selectedCustomer.value!.id.toString(),
        customerName: selectedCustomer.value!.customerName!,
        companies: _prepareCompaniesForOrder(),
        orderDate: existingOrder.orderDate,
        totalAmount: totalAmount.value,
        totalItems: totalItems.value,
        syncDate: existingOrder.syncDate,
        syncedStatus: existingOrder.syncedStatus,
        guid: existingOrder.guid,
      );

      final updateOrderResponse = await updateOrderLocalUsecase.call(
        updatedOrder,
      );

      final success = updateOrderResponse.fold(
        (error) => false,
        (success) => success,
      );

      if (success) {
        _showSuccessSnackbar('Order updated successfully');
        await Get.offAllNamed(Routes.HOME);
      } else {
        _showErrorSnackbar(
          'Failed to update order',
          'Database operation failed',
        );
      }
    } catch (e) {
      print('Error updating order: $e');
      _showErrorSnackbar('Failed to update order', e.toString());
    } finally {
      isSaving.value = false;
    }
  }

  /// Prepare companies data for saving to database
  List<OrderCompanies> _prepareCompaniesForOrder() {
    final List<OrderCompanies> companies = [];

    // Process each company that has products in the order
    for (var entry in groupedProductsByCompany.entries) {
      final companyId = entry.key;
      final products = entry.value;

      // Get company details
      final company = getCompaniesModel.firstWhere(
        (c) => c.id.toString() == companyId,
        orElse: () => CompaniesModel(name: 'Unknown Company'),
      );

      // Calculate company total with discounts
      final companyTotal = products.fold(
        0.0,
        (sum, product) => sum + calculateProductTotal(product),
      );

      // Convert products to the format expected by database
      final orderProducts = products
          .map(
            (product) => OrderProducts(
              productId: product.productId,
              productName: product.productName,
              quantityPack: product.quantityPack,
              bonus: product.bonus,
              discRatio: product.discRatio,
              pricePack: product.pricePack,
              rowTotal: calculateProductTotal(product),
              packingName: product.packingName,
              quantityLose: product.quantityLose,
              priceLose: product.priceLose,
              discValuePack: product.discValuePack,
              multiplier: product.multiplier,
              packingId: product.packingId,
              sTaxRatio: product.sTaxRatio,
            ),
          )
          .toList();

      // Create company order object
      companies.add(
        OrderCompanies(
          companyId: companyId,
          companyName: company.name ?? 'Unknown Company',
          products: orderProducts,
          companyTotalAmount: companyTotal,
          companyTotalItems: products.length,
        ),
      );
    }

    return companies;
  }

  // ========================================================================
  // UI HELPER METHODS
  // ========================================================================

  void _showSuccessSnackbar(String message) {
    Get.snackbar(
      'Success',
      message,
      backgroundColor: Colors.green,
      colorText: Colors.white,
    );
  }

  void _showErrorSnackbar(String title, String message) {
    Get.snackbar(
      title,
      message,
      backgroundColor: Colors.red,
      colorText: Colors.white,
    );
  }
}
