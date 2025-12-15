import 'package:flutter/foundation.dart';
import 'package:pharma_booking_app/modules/intellibiz/create_order_intellibiz/presentation/controllers/create_order_intellibiz_controller.dart';
import '../../../common/home/presentation/barrel.dart';

// ✅ STEP 1: YEH IMPORT ADD KARO (Line 6 par)
import 'package:pharma_booking_app/core/utils/product_calculation_utils.dart';

/// Controller for managing product selection and order creation in the pharma app
/// Handles product filtering, company selection, and order management
class AllProductsIntellibizController extends GetxController {
  // ╔══════════════════════════════════════════════════════════════════════════════╗
  // ║                            CUSTOMER DETAILS VARIABLES                        ║
  // ╚══════════════════════════════════════════════════════════════════════════════╝

  final Rx<GetAreaListModel?> selectedSector = Rx<GetAreaListModel?>(null);
  final Rx<GetSubAreaListModel?> selectedTown = Rx<GetSubAreaListModel?>(null);
  final Rx<GetCustomersModel?> selectedCustomer = Rx<GetCustomersModel?>(null);

  // ╔══════════════════════════════════════════════════════════════════════════════╗
  // ║                            SEARCH & UI CONTROLLERS                           ║
  // ╚══════════════════════════════════════════════════════════════════════════════╝

  final TextEditingController searchController = TextEditingController();
  final TextEditingController companySearchController = TextEditingController();
  final FocusNode qtyFocusNode = FocusNode();
  final FocusNode searchFocusNode = FocusNode();
  final FocusNode companySearchFocusNode = FocusNode();

  // ╔══════════════════════════════════════════════════════════════════════════════╗
  // ║                            LOADING STATE VARIABLES                           ║
  // ╚══════════════════════════════════════════════════════════════════════════════╝

  var isLoading = false.obs;
  var isCompaniesLoading = false.obs;

  // ╔══════════════════════════════════════════════════════════════════════════════╗
  // ║                            PRODUCTS & COMPANIES DATA                         ║
  // ╚══════════════════════════════════════════════════════════════════════════════╝

  RxList<GetAllProductsModel> getAllProducts = <GetAllProductsModel>[].obs;
  RxList<GetAllProductsModel> filteredProducts = <GetAllProductsModel>[].obs;
  RxList<CompaniesModel> getAllCompanies = <CompaniesModel>[].obs;
  RxList<CompaniesModel> filteredCompanies = <CompaniesModel>[].obs;
  RxString selectedCompany = "All Companies".obs;
  RxString selectedCompanyId = "".obs;

  // ╔══════════════════════════════════════════════════════════════════════════════╗
  // ║                            ORDER MANAGEMENT VARIABLES                        ║
  // ╚══════════════════════════════════════════════════════════════════════════════╝

  RxList<OrderProducts> selectedProducts = <OrderProducts>[].obs;
  RxDouble totalAmount = 0.0.obs;
  RxDouble companyTotal = 0.0.obs;
  RxInt totalItems = 0.obs;
  RxInt companyTotalItems = 0.obs;

  // ╔══════════════════════════════════════════════════════════════════════════════╗
  // ║                            SALESMAN PERMISSIONS                              ║
  // ╚══════════════════════════════════════════════════════════════════════════════╝

  var showBns = false.obs;
  var showprice = false.obs;
  var showdisc = false.obs;

  // ╔══════════════════════════════════════════════════════════════════════════════╗
  // ║                            LIFECYCLE METHODS                                 ║
  // ╚══════════════════════════════════════════════════════════════════════════════╝

  @override
  void onInit() {
    super.onInit();
    _initializeData();
    _setupListeners();
  }

  void _initializeData() {
    try {
      final arguments = Get.arguments;

      if (arguments == null) {
        if (kDebugMode) {
          print('Error: Get.arguments is null');
        }
        return;
      }

      if (arguments is List) {
        if (arguments.length > 5) {
          selectedProducts.value = List<OrderProducts>.from(arguments[5] ?? []);
          calculateTotals();
        }

        selectedCustomer.value = arguments.isNotEmpty ? arguments[0] : null;
        selectedTown.value = arguments.length > 1 ? arguments[1] : null;
        selectedSector.value = arguments.length > 2 ? arguments[2] : null;

        if (arguments.length > 3) {
          getAllProducts.value = List<GetAllProductsModel>.from(
            arguments[3] ?? [],
          );
          filteredProducts.value = List.from(getAllProducts);
        }

        if (arguments.length > 4) {
          getAllCompanies.value = List<CompaniesModel>.from(arguments[4] ?? []);
          filteredCompanies.value = List.from(getAllCompanies);
        }
      } else if (arguments is Map<String, dynamic>) {
        selectedCustomer.value = arguments['selectedCustomer'];
        selectedTown.value = arguments['selectedTown'];
        selectedSector.value = arguments['selectedSector'];

        if (arguments['selectedProducts'] != null) {
          selectedProducts.value = List<OrderProducts>.from(
            arguments['selectedProducts'],
          );
          calculateTotals();
        }

        if (arguments['getAllProducts'] != null) {
          getAllProducts.value = List<GetAllProductsModel>.from(
            arguments['getAllProducts'],
          );
          filteredProducts.value = List.from(getAllProducts);
        }

        if (arguments['getCompaniesModel'] != null) {
          getAllCompanies.value = List<CompaniesModel>.from(
            arguments['getCompaniesModel'],
          );
          filteredCompanies.value = List.from(getAllCompanies);
        }
      }

      isLoading.value = false;
      isCompaniesLoading.value = false;
    } catch (e) {
      if (kDebugMode) {
        print('Error initializing data: $e');
      }
      isLoading.value = false;
      isCompaniesLoading.value = false;

      if (Get.context != null) {
        AppToasts.showErrorToast(
          Get.context!,
          'Failed to load data: ${e.toString()}',
        );
      }
    }
  }

  void _setupListeners() {
    searchController.addListener(filterProducts);
    companySearchController.addListener(filterCompanies);
  }

  // ╔══════════════════════════════════════════════════════════════════════════════╗
  // ║         ✅ NAYI CALCULATION METHODS - YEH SAB ADD KARO (Line 180 ke baad)   ║
  // ╚══════════════════════════════════════════════════════════════════════════════╝

  // ✅ Method 1: Bottom sheet ke liye - Yeh wali method calculateTotals() use karegi
  ProductCalculationResult calculateProductAmounts({
    required String productId,
    required int quantityPack,
    required int quantityLose,
    required double price,
    required double discountPercent,
    Packing? selectedPacking,
  }) {
    // Product details nikalo
    final productDetails = getAllProducts.firstWhere(
      (p) => p.id.toString() == productId,
    );

    // Utility class ko call karo - Yeh actual calculation karega
    return ProductCalculationUtils.calculateProductAmounts(
      productDetails: productDetails,
      quantityPack: quantityPack,
      quantityLose: quantityLose,
      price: price,
      discountPercent: discountPercent,
      selectedPacking: selectedPacking,
    );
  }

  // ✅ Method 2: Final amount ke liye - Order list mein dikhane ke liye
  double calculateProductTotal(OrderProducts product) {
    final productDetails = getAllProducts.firstWhere(
      (p) => p.id.toString() == product.productId,
      orElse: () => GetAllProductsModel(),
    );

    final result = ProductCalculationUtils.calculateFromOrderProduct(
      orderProduct: product,
      productDetails: productDetails,
    );

    return result.finalAmount; // Final amount after discount
  }

  // ✅ Method 3: Subtotal ke liye - Discount se pehle ki amount
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

  // ✅ Method 4: Discount amount ke liye - Kitna discount mila
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

  // ╔══════════════════════════════════════════════════════════════════════════════╗
  // ║                            ORDER MANAGEMENT METHODS                          ║
  // ╚══════════════════════════════════════════════════════════════════════════════╝

  void addProductToOrder(OrderProducts product) {
    final existingIndex = selectedProducts.indexWhere(
      (p) => p.productId == product.productId,
    );

    if (existingIndex != -1) {
      selectedProducts[existingIndex] = product;
    } else {
      selectedProducts.add(product);
    }

    calculateTotals();
    notifyCreateOrderController();
  }

  void removeProductFromOrder(String productId) {
    selectedProducts.removeWhere((p) => p.productId == productId);
    calculateTotals();
    notifyCreateOrderController();
  }

  void updateProductInOrder(OrderProducts updatedProduct) {
    final index = selectedProducts.indexWhere(
      (p) => p.productId == updatedProduct.productId,
    );

    if (index != -1) {
      selectedProducts[index] = updatedProduct;
      calculateTotals();
    }
  }

  void clearOrder() {
    selectedProducts.clear();
    calculateTotals();
    notifyCreateOrderController();
  }

  bool isProductInOrder(String productId) {
    return selectedProducts.any((p) => p.productId == productId);
  }

  OrderProducts? getProductFromOrder(String productId) {
    try {
      return selectedProducts.firstWhere((p) => p.productId == productId);
    } catch (e) {
      return null;
    }
  }

  // ╔══════════════════════════════════════════════════════════════════════════════╗
  // ║                            CALCULATION METHODS                               ║
  // ╚══════════════════════════════════════════════════════════════════════════════╝

  void calculateTotals() {
    // Calculate total amount using our new method
    totalAmount.value = selectedProducts.fold(
      0.0,
      (sum, product) => sum + calculateProductTotal(product),
    );

    totalItems.value = selectedProducts.length;

    if (selectedCompanyId.value.isNotEmpty) {
      final companyProducts = selectedProducts.where((product) {
        return product.companyOrderId.toString() == selectedCompanyId.value;
      }).toList();

      companyTotal.value = companyProducts.fold(
        0.0,
        (sum, product) => sum + calculateProductTotal(product),
      );

      companyTotalItems.value = companyProducts.length;
    } else {
      companyTotal.value = 0.0;
      companyTotalItems.value = 0;
    }
  }

  // ╔══════════════════════════════════════════════════════════════════════════════╗
  // ║                            ORDER PREPARATION                                 ║
  // ╚══════════════════════════════════════════════════════════════════════════════╝

  OrderItemsForLocal prepareOrder(GetCustomersModel customer) {
    final Map<String, List<OrderProducts>> groupedProducts = {};

    for (var product in selectedProducts) {
      final companyId = _getProductCompanyId(product.productId);
      if (!groupedProducts.containsKey(companyId)) {
        groupedProducts[companyId] = [];
      }
      groupedProducts[companyId]!.add(product);
    }

    final List<OrderCompanies> companies = groupedProducts.entries.map((entry) {
      final companyProducts = entry.value;
      final company = getAllCompanies.firstWhere(
        (c) => c.id?.toString() == entry.key || c.id.toString() == entry.key,
        orElse: () => CompaniesModel(),
      );

      final totalAmount = companyProducts.fold(
        0.0,
        (sum, product) => sum + calculateProductTotal(product),
      );

      final totalItems = companyProducts.length;

      return OrderCompanies(
        orderId: 0,
        companyId: entry.key,
        companyName: company.name ?? 'Unknown Company',
        products: companyProducts,
        companyTotalAmount: totalAmount,
        companyTotalItems: totalItems,
      );
    }).toList();

    return OrderItemsForLocal(
      customerAddress:
          "${selectedSector.value!.name} - ${selectedTown.value!.name}",
      customerId: customer.id!.toString(),
      customerName: customer.customerName!,
      companies: companies,
      orderDate: DateTime.now(),
      totalAmount: totalAmount.value,
      totalItems: selectedProducts.length,
    );
  }

  // ╔══════════════════════════════════════════════════════════════════════════════╗
  // ║                            DATA FETCHING METHODS                             ║
  // ╚══════════════════════════════════════════════════════════════════════════════╝

  void fetchProducts() async {
    try {
      isLoading.value = true;

      final arguments = Get.arguments;
      if (arguments is List && arguments.length > 3) {
        getAllProducts.value = List<GetAllProductsModel>.from(
          arguments[3] ?? [],
        );
      } else if (arguments is Map && arguments['getAllProducts'] != null) {
        getAllProducts.value = List<GetAllProductsModel>.from(
          arguments['getAllProducts'],
        );
      }

      filteredProducts.value = List.from(getAllProducts);
    } catch (error) {
      if (kDebugMode) {
        print('Error fetching products: $error');
      }
      if (Get.context != null) {
        AppToasts.showErrorToast(
          Get.context!,
          'Failed to load products: ${error.toString()}',
        );
      }
    } finally {
      isLoading.value = false;
    }
  }

  void fetchCompanies() async {
    try {
      isCompaniesLoading.value = true;

      final arguments = Get.arguments;
      if (arguments is List && arguments.length > 4) {
        getAllCompanies.value = List<CompaniesModel>.from(arguments[4] ?? []);
      } else if (arguments is Map && arguments['getCompaniesModel'] != null) {
        getAllCompanies.value = List<CompaniesModel>.from(
          arguments['getCompaniesModel'],
        );
      }

      filteredCompanies.value = List.from(getAllCompanies);
    } catch (error) {
      if (kDebugMode) {
        print('Error fetching companies: $error');
      }
      if (Get.context != null) {
        AppToasts.showErrorToast(
          Get.context!,
          'Failed to load companies: ${error.toString()}',
        );
      }
    } finally {
      isCompaniesLoading.value = false;
    }
  }

  // ╔══════════════════════════════════════════════════════════════════════════════╗
  // ║                            FILTERING METHODS                                 ║
  // ╚══════════════════════════════════════════════════════════════════════════════╝

  void filterProducts() {
    final query = searchController.text.toLowerCase();
    List<GetAllProductsModel> productsToFilter;

    if (selectedCompanyId.value.isEmpty ||
        selectedCompany.value == "All Companies") {
      productsToFilter = List.from(getAllProducts);
    } else {
      productsToFilter = getAllProducts.where((product) {
        String productCompanyId = product.companyId.toString();
        String selectedId = selectedCompanyId.value.toString();
        return productCompanyId == selectedId;
      }).toList();
    }

    if (query.isEmpty) {
      filteredProducts.value = productsToFilter;
    } else {
      filteredProducts.value = productsToFilter.where((product) {
        return product.productName?.toLowerCase().contains(query) == true;
      }).toList();
    }
  }

  void filterCompanies() {
    final query = companySearchController.text.toLowerCase();
    if (query.isEmpty) {
      filteredCompanies.value = List.from(getAllCompanies);
    } else {
      filteredCompanies.value = getAllCompanies.where((company) {
        return company.name?.toLowerCase().contains(query) == true;
      }).toList();
    }
  }

  // ╔══════════════════════════════════════════════════════════════════════════════╗
  // ║                            COMPANY SELECTION METHODS                         ║
  // ╚══════════════════════════════════════════════════════════════════════════════╝

  void selectCompany(String companyName, [String? companyId]) {
    selectedCompany.value = companyName;
    selectedCompanyId.value = companyId ?? "";
    companySearchController.clear();
    Get.back();
    filterProducts();
    calculateTotals();
  }

  void clearCompanySearch() {
    companySearchController.clear();
    filteredCompanies.value = List.from(getAllCompanies);
  }

  // ╔══════════════════════════════════════════════════════════════════════════════╗
  // ║                            UTILITY METHODS                                   ║
  // ╚══════════════════════════════════════════════════════════════════════════════╝

  String _getProductCompanyId(String productId) {
    final product = getAllProducts.firstWhere(
      (p) => p.id.toString() == productId,
      orElse: () => GetAllProductsModel(),
    );
    return product.companyId?.toString() ?? '';
  }

  int getProductsCountForCompany(String companyId) {
    if (companyId.isEmpty) return getAllProducts.length;
    return getAllProducts.where((product) {
      return product.companyId.toString() == companyId;
    }).length;
  }

  void refreshData() {
    fetchProducts();
    fetchCompanies();
  }

  void resetState() {
    selectedProducts.clear();
    totalAmount.value = 0.0;
    totalItems.value = 0;
    companyTotal.value = 0.0;
    companyTotalItems.value = 0;
    selectedCompanyId.value = "";
    selectedCompany.value = "All Companies";
    searchController.clear();
    companySearchController.clear();
    filteredProducts.value = List.from(getAllProducts);
    filteredCompanies.value = List.from(getAllCompanies);
  }

  void notifyCreateOrderController() {
    if (Get.isRegistered<CreateOrderIntellibizController>()) {
      final createOrderController = Get.find<CreateOrderIntellibizController>();
      createOrderController.updateOrderData(
        selectedProducts.toList(),
        totalAmount.value,
        totalItems.value,
      );
    }
  }
}
