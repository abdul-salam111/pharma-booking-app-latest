// ignore_for_file: avoid_print, prefer_typing_uninitialized_variables

import 'package:pharma_booking_app/modules/intellibiz/all_products_intellibiz/controllers/all_products_intellibiz_controller.dart';
import 'package:uuid/uuid.dart';
import '../../../../../core/utils/current_user_helper.dart';
import '../../../all_products/presentation/controllers/all_products_controller.dart';
import '../../../../common/home/presentation/barrel.dart';
import '../../domain/usecases/local_usecases/create_order_local_usecase.dart';
import '../../domain/usecases/local_usecases/update_order_local_usecase.dart';

/// Controller for managing order creation and editing functionality
/// Handles product selection, customer details, order calculations, and database operations
class CreateOrderController extends GetxController {
  final CreateOrderLocalUsecase createOrderLocalUsecase;

  final UpdateOrderLocalUsecase updateOrderLocalUsecase;

  CreateOrderController({
    required this.createOrderLocalUsecase,
    required this.updateOrderLocalUsecase,
  });

  // ========================================================================
  // VARIABLES - Customer & Location Details
  // ========================================================================

  /// Selected sector for the order (reactive variable)
  final Rx<GetAreaListModel?> selectedSector = Rx<GetAreaListModel?>(null);

  /// Selected town for the order (reactive variable)
  final Rx<GetSubAreaListModel?> selectedTown = Rx<GetSubAreaListModel?>(null);

  /// Selected customer for the order (reactive variable)
  final Rx<GetCustomersModel?> selectedCustomer = Rx<GetCustomersModel?>(null);
  var uuid = Uuid();
  // ========================================================================
  // VARIABLES - UI Controllers
  // ========================================================================

  /// Text controller for search functionality
  final TextEditingController searchController = TextEditingController();

  /// Focus node for search input field
  final FocusNode searchFocusNode = FocusNode();

  // ========================================================================
  // VARIABLES - Product & Order Data
  // ========================================================================

  /// List of products added to the current order
  RxList<OrderProducts> selectedProducts = <OrderProducts>[].obs;

  /// List of all available products from the database
  RxList<GetAllProductsModel> getAllProducts = <GetAllProductsModel>[].obs;

  /// List of all companies from the database
  RxList<CompaniesModel> getCompaniesModel = <CompaniesModel>[].obs;

  // ========================================================================
  // VARIABLES - Order Calculations
  // ========================================================================

  /// Total amount for the entire order (including discounts)
  RxDouble totalAmount = 0.0.obs;

  /// Total number of distinct items in the order
  RxInt totalItems = 0.obs;

  /// Loading state indicator for async operations
  RxBool isLoading = false.obs;

  /// Saving state indicator for save/update operations
  RxBool isSaving = false.obs;

  // ========================================================================
  // VARIABLES - Company Grouping & Organization
  // ========================================================================

  /// Products grouped by company ID for better organization
  RxMap<String, List<OrderProducts>> groupedProductsByCompany =
      <String, List<OrderProducts>>{}.obs;

  /// List of companies that have products in the current order
  RxList<CompaniesModel> companiesWithOrders = <CompaniesModel>[].obs;

  /// Total amount per company (with discounts applied)
  RxMap<String, double> companyTotals = <String, double>{}.obs;

  /// Total item count per company
  RxMap<String, int> companyItemCounts = <String, int>{}.obs;

  /// Filtered companies list for search functionality
  RxList<CompaniesModel> filteredCompanies = <CompaniesModel>[].obs;

  // ========================================================================
  // VARIABLES - Edit Order Functionality
  // ========================================================================

  /// Flag to determine if we're editing an existing order or creating new
  bool isEditing = false;

  /// ID of the existing order being edited (null for new orders)
  var existingOrderId;

  /// Complete existing order object when editing
  var existingOrder;

  // ========================================================================
  // LIFECYCLE METHODS
  // ========================================================================

  @override
  void onInit() {
    super.onInit();
    // Initialize controller with data from navigation arguments
    _receiveAndProcessData();
    // Set up listeners for reactive updates
    _setupListeners();
  }

  @override
  void onClose() {
    // Clean up resources when controller is disposed
    searchController.dispose();
    searchFocusNode.dispose();
    super.onClose();
  }

  // ========================================================================
  // INITIALIZATION METHODS
  // ========================================================================

  /// Set up listeners for reactive UI updates
  void _setupListeners() {
    // Listen to search input changes and filter companies accordingly
    searchController.addListener(filterCompanies);
  }

  /// Receive and process data passed from previous screens or controllers
  void _receiveAndProcessData() {
    try {
      // Extract data from navigation arguments
      final arguments = Get.arguments as Map<String, dynamic>?;

      if (arguments != null) {
        // Extract customer details
        _extractCustomerDetails(arguments);

        // Extract product and company data
        _extractProductData(arguments);

        // Extract edit mode information
        _extractEditModeData(arguments);
      }

      // Also check if AllProductsController has selected products
      _checkAllProductsController();

      // Process all the received data
      _processOrderData();
    } catch (e) {
      print('Error receiving data: $e');
      _showErrorSnackbar('Error loading order data', e.toString());
    }
  }

  /// Extract customer, town, and sector details from arguments
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

  /// Extract product and company data from arguments
  void _extractProductData(Map<String, dynamic> arguments) {
    // Extract selected products for the order
    if (arguments['selectedProducts'] != null) {
      selectedProducts.value = List<OrderProducts>.from(
        arguments['selectedProducts'],
      );
    }

    // Extract all available products
    if (arguments['getAllProducts'] != null) {
      getAllProducts.value = List<GetAllProductsModel>.from(
        arguments['getAllProducts'],
      );
    }

    // Extract all companies data
    if (arguments['getCompaniesModel'] != null) {
      getCompaniesModel.value = List<CompaniesModel>.from(
        arguments['getCompaniesModel'],
      );
    }
  }

  /// Extract edit mode data (for updating existing orders)
  void _extractEditModeData(Map<String, dynamic> arguments) {
    // Check if we're in edit mode
    isEditing = arguments['isEditing'] ?? false;

    // Get existing order ID if editing
    existingOrderId = arguments['orderId'];

    // Get existing order object if editing
    existingOrder = arguments['existingOrder'] as OrderItemsForLocal?;
  }

  /// Check AllProductsController for any selected products
  void _checkAllProductsController() {
    if (Get.isRegistered<AllProductsController>()) {
      final allProductsController = Get.find<AllProductsController>();

      // If AllProductsController has selected products, use them
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

  /// Main method to process all order data after initialization
  void _processOrderData() {
    _calculateTotals(); // Calculate total amounts and items
    _groupProductsByCompany(); // Group products by company
    _getCompaniesWithOrders(); // Get companies that have orders
    _calculateCompanyTotals(); // Calculate totals per company
    filteredCompanies.value = List.from(
      companiesWithOrders,
    ); // Initialize filtered list
  }

  /// Calculate total amount and total items for the entire order
  void _calculateTotals() {
    // Calculate total amount with discounts applied
    totalAmount.value = selectedProducts.fold(
      0.0,
      (sum, product) => sum + calculateProductTotal(product),
    );

    // Count distinct products (not quantities)
    totalItems.value = selectedProducts.length;
  }

  /// Group selected products by their company ID for better organization
  void _groupProductsByCompany() {
    final Map<String, List<OrderProducts>> grouped = {};

    // Iterate through all selected products
    for (var product in selectedProducts) {
      final companyId = product.companyOrderId.toString();

      // Create new list if company doesn't exist in grouped map
      if (!grouped.containsKey(companyId)) {
        grouped[companyId] = [];
      }

      // Add product to the company's list
      grouped[companyId]!.add(product);
    }

    // Update reactive variable
    groupedProductsByCompany.value = grouped;
  }

  /// Get list of companies that have products in the current order
  void _getCompaniesWithOrders() {
    final List<CompaniesModel> companies = [];

    // For each company that has products in the order
    for (var companyId in groupedProductsByCompany.keys) {
      // Find the company details from the master list
      final company = getCompaniesModel.firstWhere(
        (c) => c.id.toString() == companyId,
        orElse: () => CompaniesModel(
          id: int.tryParse(companyId),
          name: 'Unknown Company',
        ),
      );
      companies.add(company);
    }

    // Update reactive variable
    companiesWithOrders.value = companies;
  }

  /// Calculate total amounts and item counts for each company
  void _calculateCompanyTotals() {
    final Map<String, double> totals = {};
    final Map<String, int> itemCounts = {};

    // Calculate totals for each company
    for (var entry in groupedProductsByCompany.entries) {
      final companyId = entry.key;
      final products = entry.value;

      // Calculate company total with discounts applied
      totals[companyId] = products.fold(
        0.0,
        (sum, product) => sum + calculateProductTotal(product),
      );

      // Count distinct products for this company
      itemCounts[companyId] = products.length;
    }

    // Update reactive variables
    companyTotals.value = totals;
    companyItemCounts.value = itemCounts;
  }

  // ========================================================================
  // CALCULATION HELPER METHODS
  // ========================================================================

  /// Calculate total amount for a single product (with discount applied)
  double calculateProductTotal(OrderProducts product) {
    final subtotal = getProductSubtotal(product);
    final discountAmount = getProductDiscountAmount(product);
    return subtotal - discountAmount;
  }

  /// Get the original subtotal for a product (before discount)
  double getProductSubtotal(OrderProducts product) {
    return product.quantityPack * product.pricePack;
  }

  /// Calculate discount amount for a product
  double getProductDiscountAmount(OrderProducts product) {
    final subtotal = getProductSubtotal(product);
    return (subtotal * product.discPercent!) / 100;
  }

  // ========================================================================
  // GETTER METHODS
  // ========================================================================

  /// Get company name by company ID
  String getCompanyName(String companyId) {
    final company = getCompaniesModel.firstWhere(
      (c) => c.id.toString() == companyId,
      orElse: () => CompaniesModel(name: 'Unknown Company'),
    );
    return company.name ?? 'Unknown Company';
  }

  /// Get total amount for a specific company
  double getCompanyTotal(String companyId) {
    return companyTotals[companyId] ?? 0.0;
  }

  /// Get item count for a specific company
  int getCompanyItemCount(String companyId) {
    return companyItemCounts[companyId] ?? 0;
  }

  /// Get list of products for a specific company
  List<OrderProducts> getCompanyProducts(String companyId) {
    return groupedProductsByCompany[companyId] ?? [];
  }

  // ========================================================================
  // SEARCH & FILTER METHODS
  // ========================================================================

  /// Filter companies based on search query
  void filterCompanies() {
    final query = searchController.text.toLowerCase();

    if (query.isEmpty) {
      // Show all companies if search is empty
      filteredCompanies.value = List.from(companiesWithOrders);
    } else {
      // Filter companies by name containing search query
      filteredCompanies.value = companiesWithOrders.where((company) {
        return company.name?.toLowerCase().contains(query) == true;
      }).toList();
    }
  }

  /// Clear search input and reset filter
  void clearSearch() {
    searchController.clear();
    filteredCompanies.value = List.from(companiesWithOrders);
  }

  // ========================================================================
  // UPDATE METHODS
  // ========================================================================

  /// Update order data when returning from product selection screen
  void updateOrderData(
    List<OrderProducts> newProducts,
    double newTotalAmount,
    int newTotalItems,
  ) {
    // Update reactive variables
    selectedProducts.value = newProducts;
    totalAmount.value = newTotalAmount;
    totalItems.value = newTotalItems;

    // Re-process all data with new products
    _processOrderData();

    // Notify UI to rebuild
    update();
  }

  // ========================================================================
  // NAVIGATION METHODS
  // ========================================================================

  /// Navigate to all products screen for adding more products
  void goToAllProducts([String? companyId]) async {
    final String softwareVersion =  CurrentUserHelper.softwareVersion;
    if (softwareVersion == "2") {
      // Ensure AllProductsController is available
      if (!Get.isRegistered<AllProductsIntellibizController>()) {
        Get.lazyPut(() => AllProductsIntellibizController());
      }
      // Navigate with all necessary data
      Get.toNamed(
        Routes.ALL_PRODUCTS_INTELLIBIZ,
        arguments: [
          selectedCustomer.value, // index 0 - customer details
          selectedTown.value, // index 1 - town details
          selectedSector.value, // index 2 - sector details
          getAllProducts.toList(), // index 3 - all available products
          getCompaniesModel.toList(), // index 4 - all companies
          selectedProducts.toList(), // index 5 - currently selected products
        ],
      );

      // Set company filter after navigation if specified
      _setCompanyFilterAfterNavigation(companyId);
    } else {
      // Ensure AllProductsController is available
      if (!Get.isRegistered<AllProductsController>()) {}

      // Navigate with all necessary data
      Get.toNamed(
        Routes.ALL_PRODUCTS,
        arguments: [
          selectedCustomer.value, // index 0 - customer details
          selectedTown.value, // index 1 - town details
          selectedSector.value, // index 2 - sector details
          getAllProducts.toList(), // index 3 - all available products
          getCompaniesModel.toList(), // index 4 - all companies
          selectedProducts.toList(), // index 5 - currently selected products
        ],
      );

      // Set company filter after navigation if specified
      _setCompanyFilterAfterNavigation(companyId);
    }
  }

  /// Set company filter in AllProductsController after navigation
  void _setCompanyFilterAfterNavigation(String? companyId) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      try {
        final allProductsController = Get.find<AllProductsController>();

        if (companyId != null && companyId.isNotEmpty) {
          // Find company name and set filter
          final company = getCompaniesModel.firstWhere(
            (c) => c.id.toString() == companyId,
            orElse: () => CompaniesModel(name: 'Unknown Company'),
          );

          allProductsController.selectedCompanyId.value = companyId;
          allProductsController.selectedCompany.value =
              company.name ?? 'Unknown Company';
        } else {
          // Show all companies
          allProductsController.selectedCompanyId.value = "";
          allProductsController.selectedCompany.value = "All Companies";
        }

        // Apply filter and recalculate
        allProductsController.filterProducts();
        allProductsController.calculateTotals();
      } catch (e) {
        print('Error setting company filter: $e');
      }
    });
  }

  /// Navigate to add more products (different behavior for edit vs create)
  void addMoreProducts() {
    if (isEditing) {
      if (!Get.isRegistered<AllProductsController>()) {
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
        // For editing, go to all products with current data
        final allProductsController = Get.find<AllProductsController>();
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
      // For new orders, reset filter and go back
      final allProductsController = Get.find<AllProductsController>();
      allProductsController.selectedCompanyId.value = "";
      allProductsController.selectedCompany.value = "All Companies";
      Get.back();
    }
  }

  /// Close order with confirmation dialog
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
      onCancel: () {
        // Dialog will close automatically
      },
    );
  }

  // ========================================================================
  // DATABASE OPERATIONS
  // ========================================================================

  /// Save new order to local database
  Future<void> saveOrder() async {
    try {
      isSaving.value = true;

      // Create order object with all necessary details
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

      // Save to local database
      final localOrderResponse = await createOrderLocalUsecase.call(order);

      // Extract ID
      final orderId = localOrderResponse.fold(
        (error) => -1,
        (success) => success,
      );

      print('Order saved with ID: $orderId');

      if (orderId >= 0) {
        // Success - show message and navigate to home
        _showSuccessSnackbar('Order saved successfully');
        Get.offAllNamed(Routes.HOME);
      } else {
        // Failed to save
        _showErrorSnackbar('Failed to save order', 'Database operation failed');
      }
    } catch (e) {
      print('Error saving order: $e');
      _showErrorSnackbar('Failed to save order', e.toString());
    } finally {
      isSaving.value = false;
    }
  }

  /// Update existing order in local database
  Future<void> updateOrder() async {
    try {
      isSaving.value = true;

      // Validate that we have existing order data
      if (existingOrder == null || existingOrderId == null) {
        throw Exception('Existing order data not found');
      }

      // Create updated order object
      final updatedOrder = OrderItemsForLocal(
        orderId: existingOrderId,
        customerAddress:
            "${selectedSector.value!.name} - ${selectedTown.value!.name}",
        customerId: selectedCustomer.value!.id.toString(),
        customerName: selectedCustomer.value!.customerName!,
        companies: _prepareCompaniesForOrder(),
        orderDate: existingOrder.orderDate, // Keep original date
        totalAmount: totalAmount.value,
        totalItems: totalItems.value,
        syncDate: existingOrder.syncDate, // Keep sync info
        syncedStatus: existingOrder.syncedStatus, // Keep sync status
        guid: existingOrder.guid,
      );

      // Update in database
      final updateOrderResponse = await updateOrderLocalUsecase.call(
        updatedOrder,
      );

      // Extract success status
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
              discPercent: product.discPercent,
              pricePack: product.pricePack, // Keep original price
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

  /// Show success snackbar with green color
  void _showSuccessSnackbar(String message) {
    Get.snackbar(
      'Success',
      message,
      backgroundColor: Colors.green,
      colorText: Colors.white,
    );
  }

  /// Show error snackbar with red color
  void _showErrorSnackbar(String title, String message) {
    Get.snackbar(
      title,
      message,
      backgroundColor: Colors.red,
      colorText: Colors.white,
    );
  }
}
