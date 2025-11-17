// import 'package:flutter/foundation.dart';
// import '../../../../core/core.dart';
// import '../../../../core/shared/models/post_models/create_order_for_local.dart';
// import '../../../create_order/presentation/controllers/create_order_controller.dart';
// import '../../../home/presentation/barrel.dart';
// import '../../../select_customer/data/models/get_customers_model/get_customers_model.dart';
// import '../../../select_customer/data/models/get_sectors_model/get_sectors_model.dart';
// import '../../../select_customer/data/models/get_towns_model/get_towns_model.dart';
// import '../../../select_customer/domain/usecases/local_usecases/get_salesman_by_id_usecase.dart';
// import '../../data/models/get_companies_model/get_companies_model.dart';
// import '../../data/models/get_products_model/get_all_products_model.dart';

// /// Controller for managing product selection and order creation in the pharma app
// /// Handles product filtering, company selection, and order management
// class AllProductsController extends GetxController {
//   final GetLocalSalesmanByIdUsecase getLocalSalesmanByIdUsecase;
//   AllProductsController({required this.getLocalSalesmanByIdUsecase});

//   // ╔══════════════════════════════════════════════════════════════════════════════╗
//   // ║                            CUSTOMER DETAILS VARIABLES                        ║
//   // ╚══════════════════════════════════════════════════════════════════════════════╝

//   /// Currently selected sector for the customer
//   final Rx<GetSectorsModel?> selectedSector = Rx<GetSectorsModel?>(null);

//   /// Currently selected town for the customer
//   final Rx<GetTownsModel?> selectedTown = Rx<GetTownsModel?>(null);

//   /// Currently selected customer for the order
//   final Rx<GetCustomersModel?> selectedCustomer = Rx<GetCustomersModel?>(null);

//   // ╔══════════════════════════════════════════════════════════════════════════════╗
//   // ║                            SEARCH & UI CONTROLLERS                           ║
//   // ╚══════════════════════════════════════════════════════════════════════════════╝

//   /// Text controller for product search functionality
//   final TextEditingController searchController = TextEditingController();

//   /// Text controller for company search functionality
//   final TextEditingController companySearchController = TextEditingController();
//   final FocusNode qtyFocusNode = FocusNode();

//   /// Focus node for product search field
//   final FocusNode searchFocusNode = FocusNode();

//   /// Focus node for company search field
//   final FocusNode companySearchFocusNode = FocusNode();

//   // ╔══════════════════════════════════════════════════════════════════════════════╗
//   // ║                            LOADING STATE VARIABLES                           ║
//   // ╚══════════════════════════════════════════════════════════════════════════════╝

//   /// Loading state for products list
//   var isLoading = false.obs;

//   /// Loading state for companies list
//   var isCompaniesLoading = false.obs;

//   // ╔══════════════════════════════════════════════════════════════════════════════╗
//   // ║                            PRODUCTS & COMPANIES DATA                         ║
//   // ╚══════════════════════════════════════════════════════════════════════════════╝

//   /// Complete list of all available products
//   RxList<GetAllProductsModel> getAllProducts = <GetAllProductsModel>[].obs;

//   /// Filtered list of products based on search and company selection
//   RxList<GetAllProductsModel> filteredProducts = <GetAllProductsModel>[].obs;

//   /// Complete list of all available companies
//   RxList<GetCompaniesModel> getAllCompanies = <GetCompaniesModel>[].obs;

//   /// Filtered list of companies based on search
//   RxList<GetCompaniesModel> filteredCompanies = <GetCompaniesModel>[].obs;

//   /// Name of currently selected company filter
//   RxString selectedCompany = "All Companies".obs;

//   /// ID of currently selected company filter
//   RxString selectedCompanyId = "".obs;

//   // ╔══════════════════════════════════════════════════════════════════════════════╗
//   // ║                            ORDER MANAGEMENT VARIABLES                        ║
//   // ╚══════════════════════════════════════════════════════════════════════════════╝

//   /// List of products selected for the current order
//   RxList<OrderProducts> selectedProducts = <OrderProducts>[].obs;

//   /// Total amount of the entire order (includes discounts)
//   RxDouble totalAmount = 0.0.obs;

//   /// Total amount for the currently selected company filter
//   RxDouble companyTotal = 0.0.obs;

//   /// Total number of different products in the order
//   RxInt totalItems = 0.obs;

//   /// Total number of products from the selected company
//   RxInt companyTotalItems = 0.obs;

//   // ╔══════════════════════════════════════════════════════════════════════════════╗
//   // ║                            SALESMAN PERMISSIONS                              ║
//   // ╚══════════════════════════════════════════════════════════════════════════════╝

//   /// Permission flag for changing bonus
//   var showBns = false.obs;

//   /// Permission flag for changing price
//   var showprice = false.obs;

//   /// Permission flag for changing discount
//   var showdisc = false.obs;

//   // ╔══════════════════════════════════════════════════════════════════════════════╗
//   // ║                            LIFECYCLE METHODS                                 ║
//   // ╚══════════════════════════════════════════════════════════════════════════════╝

//   @override
//   void onInit() {
//     super.onInit();
//     _initializeData();
//     _setupListeners();
//     getSalesmanById();
//   }

//   /// Initialize controller data from Get.arguments
//   /// Handles both List (normal flow) and Map (editing flow) argument formats
//   void _initializeData() {
//     try {
//       final arguments = Get.arguments;

//       // Check if arguments exist and are in the expected format
//       if (arguments == null) {
//         if (kDebugMode) {
//           print('Error: Get.arguments is null');
//         }
//         return;
//       }

//       // Handle arguments as List (normal flow from previous screen)
//       if (arguments is List) {
//         // Extract selected products if available (index 5)
//         if (arguments.length > 5) {
//           selectedProducts.value = List<OrderProducts>.from(arguments[5] ?? []);
//           calculateTotals();
//         }

//         // Extract customer, town, and sector data (indices 0-2)
//         selectedCustomer.value = arguments.isNotEmpty ? arguments[0] : null;
//         selectedTown.value = arguments.length > 1 ? arguments[1] : null;
//         selectedSector.value = arguments.length > 2 ? arguments[2] : null;

//         // Extract products list (index 3)
//         if (arguments.length > 3) {
//           getAllProducts.value = List<GetAllProductsModel>.from(
//             arguments[3] ?? [],
//           );
//           filteredProducts.value = List.from(getAllProducts);
//         }

//         // Extract companies list (index 4)
//         if (arguments.length > 4) {
//           getAllCompanies.value = List<GetCompaniesModel>.from(
//             arguments[4] ?? [],
//           );
//           filteredCompanies.value = List.from(getAllCompanies);
//         }
//       }
//       // Handle arguments as Map (editing flow from order editing)
//       else if (arguments is Map<String, dynamic>) {
//         selectedCustomer.value = arguments['selectedCustomer'];
//         selectedTown.value = arguments['selectedTown'];
//         selectedSector.value = arguments['selectedSector'];

//         // Extract selected products from map
//         if (arguments['selectedProducts'] != null) {
//           selectedProducts.value = List<OrderProducts>.from(
//             arguments['selectedProducts'],
//           );
//           calculateTotals();
//         }

//         // Extract products list from map
//         if (arguments['getAllProducts'] != null) {
//           getAllProducts.value = List<GetAllProductsModel>.from(
//             arguments['getAllProducts'],
//           );
//           filteredProducts.value = List.from(getAllProducts);
//         }

//         // Extract companies list from map
//         if (arguments['getCompaniesModel'] != null) {
//           getAllCompanies.value = List<GetCompaniesModel>.from(
//             arguments['getCompaniesModel'],
//           );
//           filteredCompanies.value = List.from(getAllCompanies);
//         }
//       }

//       // Set loading states to false after initialization
//       isLoading.value = false;
//       isCompaniesLoading.value = false;
//     } catch (e) {
//       if (kDebugMode) {
//         print('Error initializing data: $e');
//       }
//       isLoading.value = false;
//       isCompaniesLoading.value = false;

//       // Show error toast if context is available
//       if (Get.context != null) {
//         AppToasts.showErrorToast(
//           Get.context!,
//           'Failed to load data: ${e.toString()}',
//         );
//       }
//     }
//   }

//   /// Set up listeners for search controllers
//   void _setupListeners() {
//     searchController.addListener(filterProducts);
//     companySearchController.addListener(filterCompanies);
//   }

//   // ╔══════════════════════════════════════════════════════════════════════════════╗
//   // ║                            SALESMAN PERMISSIONS                              ║
//   // ╚══════════════════════════════════════════════════════════════════════════════╝

//   /// Fetch salesman permissions from database
//   /// Sets permission flags for bonus, price, and discount changes
//   Future getSalesmanById() async {
//     final salesmanResponse = await getLocalSalesmanByIdUsecase.call(
//       // SessionController().getUserDetails.salesmanId!,
//       ""
//     );

//     salesmanResponse.fold((error) {}, (salesman) {
//       showBns.value = salesman!.allowChangeBonus!;
//       showprice.value = salesman.allowChangePrice!;
//       showdisc.value = salesman.allowChangeDiscount!;
//     });
//   }

//   // ╔══════════════════════════════════════════════════════════════════════════════╗
//   // ║                            ORDER MANAGEMENT METHODS                          ║
//   // ╚══════════════════════════════════════════════════════════════════════════════╝

//   /// Add a product to the current order
//   /// If product already exists in order, update it; otherwise add new entry
//   void addProductToOrder(OrderProducts product) {
//     final existingIndex = selectedProducts.indexWhere(
//       (p) => p.productId == product.productId,
//     );

//     if (existingIndex != -1) {
//       // Update existing product
//       selectedProducts[existingIndex] = product;
//     } else {
//       // Add new product
//       selectedProducts.add(product);
//     }

//     calculateTotals();
//     notifyCreateOrderController();
//   }

//   /// Remove a product from the current order by product ID
//   void removeProductFromOrder(String productId) {
//     selectedProducts.removeWhere((p) => p.productId == productId);
//     calculateTotals();
//     notifyCreateOrderController();
//   }

//   /// Update an existing product in the order
//   void updateProductInOrder(OrderProducts updatedProduct) {
//     final index = selectedProducts.indexWhere(
//       (p) => p.productId == updatedProduct.productId,
//     );

//     if (index != -1) {
//       selectedProducts[index] = updatedProduct;
//       calculateTotals();
//     }
//   }

//   /// Clear all products from the current order
//   void clearOrder() {
//     selectedProducts.clear();
//     calculateTotals();
//     notifyCreateOrderController();
//   }

//   /// Check if a product is already in the current order
//   bool isProductInOrder(String productId) {
//     return selectedProducts.any((p) => p.productId == productId);
//   }

//   /// Get a product from the current order by product ID
//   /// Returns null if product is not found
//   OrderProducts? getProductFromOrder(String productId) {
//     try {
//       return selectedProducts.firstWhere((p) => p.productId == productId);
//     } catch (e) {
//       return null;
//     }
//   }

//   // ╔══════════════════════════════════════════════════════════════════════════════╗
//   // ║                            CALCULATION METHODS                               ║
//   // ╚══════════════════════════════════════════════════════════════════════════════╝

//   /// Calculate the total price for a single product with discount applied
//   /// Formula: (quantity * price) - discount
//   double calculateProductTotal(OrderProducts product) {
//     final subtotal = product.quantity * product.price;
//     final discountAmount = (subtotal * product.discRatio) / 100;
//     return subtotal - discountAmount;
//   }

//   /// Get the original subtotal for a product (before discount)
//   double getProductSubtotal(OrderProducts product) {
//     return product.quantity * product.price;
//   }

//   /// Calculate the discount amount for a product
//   double getProductDiscountAmount(OrderProducts product) {
//     final subtotal = product.quantity * product.price;
//     return (subtotal * product.discRatio) / 100;
//   }

//   /// Calculate total amounts and item counts for the order
//   /// Updates both grand totals and company-specific totals
//   void calculateTotals() {
//     // Calculate grand total with discounts applied
//     totalAmount.value = selectedProducts.fold(
//       0.0,
//       (sum, product) => sum + calculateProductTotal(product),
//     );

//     // Count distinct products (not sum of quantities)
//     totalItems.value = selectedProducts.length;

//     // Calculate company-specific totals if a company filter is selected
//     if (selectedCompanyId.value.isNotEmpty) {
//       final companyProducts = selectedProducts.where((product) {
//         return product.companyOrderId.toString() == selectedCompanyId.value;
//       }).toList();

//       companyTotal.value = companyProducts.fold(
//         0.0,
//         (sum, product) => sum + calculateProductTotal(product),
//       );

//       companyTotalItems.value = companyProducts.length;
//     } else {
//       // Reset company totals if no company filter selected
//       companyTotal.value = 0.0;
//       companyTotalItems.value = 0;
//     }
//   }

//   // ╔══════════════════════════════════════════════════════════════════════════════╗
//   // ║                            ORDER PREPARATION                                 ║
//   // ╚══════════════════════════════════════════════════════════════════════════════╝

//   /// Prepare the final order structure with all selected products
//   /// Groups products by company and calculates totals
//   OrderItemsForLocal prepareOrder(GetCustomersModel customer) {
//     // Group products by company
//     final Map<String, List<OrderProducts>> groupedProducts = {};

//     for (var product in selectedProducts) {
//       final companyId = _getProductCompanyId(product.productId);
//       if (!groupedProducts.containsKey(companyId)) {
//         groupedProducts[companyId] = [];
//       }
//       groupedProducts[companyId]!.add(product);
//     }

//     // Create company order objects
//     final List<OrderCompanies> companies = groupedProducts.entries.map((entry) {
//       final companyProducts = entry.value;
//       final company = getAllCompanies.firstWhere(
//         (c) => c.id?.toString() == entry.key || c.companyId == entry.key,
//         orElse: () => GetCompaniesModel(),
//       );

//       // Calculate total amount with discounts applied
//       final totalAmount = companyProducts.fold(
//         0.0,
//         (sum, product) => sum + calculateProductTotal(product),
//       );

//       final totalItems = companyProducts.length;

//       return OrderCompanies(
//         orderId: 0,
//         companyId: entry.key,
//         companyName: company.companyName ?? 'Unknown Company',
//         products: companyProducts,
//         companyTotalAmount: totalAmount,
//         companyTotalItems: totalItems,
//       );
//     }).toList();

//     // Return complete order structure
//     return OrderItemsForLocal(
//       customerAddress:
//           "${selectedSector.value!.sectorName} - ${selectedTown.value!.townName}",
//       customerId: customer.id!.toString(),
//       customerName: customer.customerName!,
//       companies: companies,
//       orderDate: DateTime.now(),
//       totalAmount: totalAmount.value,
//       totalItems: selectedProducts.length,
//     );
//   }

//   // ╔══════════════════════════════════════════════════════════════════════════════╗
//   // ║                            DATA FETCHING METHODS                             ║
//   // ╚══════════════════════════════════════════════════════════════════════════════╝

//   /// Fetch products data from arguments
//   /// Handles both List and Map argument formats
//   void fetchProducts() async {
//     try {
//       isLoading.value = true;

//       final arguments = Get.arguments;
//       if (arguments is List && arguments.length > 3) {
//         getAllProducts.value = List<GetAllProductsModel>.from(
//           arguments[3] ?? [],
//         );
//       } else if (arguments is Map && arguments['getAllProducts'] != null) {
//         getAllProducts.value = List<GetAllProductsModel>.from(
//           arguments['getAllProducts'],
//         );
//       }

//       filteredProducts.value = List.from(getAllProducts);
//     } catch (error) {
//       if (kDebugMode) {
//         print('Error fetching products: $error');
//       }
//       if (Get.context != null) {
//         AppToasts.showErrorToast(
//           Get.context!,
//           'Failed to load products: ${error.toString()}',
//         );
//       }
//     } finally {
//       isLoading.value = false;
//     }
//   }

//   /// Fetch companies data from arguments
//   /// Handles both List and Map argument formats
//   void fetchCompanies() async {
//     try {
//       isCompaniesLoading.value = true;

//       final arguments = Get.arguments;
//       if (arguments is List && arguments.length > 4) {
//         getAllCompanies.value = List<GetCompaniesModel>.from(
//           arguments[4] ?? [],
//         );
//       } else if (arguments is Map && arguments['getCompaniesModel'] != null) {
//         getAllCompanies.value = List<GetCompaniesModel>.from(
//           arguments['getCompaniesModel'],
//         );
//       }

//       filteredCompanies.value = List.from(getAllCompanies);
//     } catch (error) {
//       if (kDebugMode) {
//         print('Error fetching companies: $error');
//       }
//       if (Get.context != null) {
//         AppToasts.showErrorToast(
//           Get.context!,
//           'Failed to load companies: ${error.toString()}',
//         );
//       }
//     } finally {
//       isCompaniesLoading.value = false;
//     }
//   }

//   // ╔══════════════════════════════════════════════════════════════════════════════╗
//   // ║                            FILTERING METHODS                                 ║
//   // ╚══════════════════════════════════════════════════════════════════════════════╝

//   /// Filter products based on search query and selected company
//   /// First applies company filter, then applies search filter
//   void filterProducts() {
//     final query = searchController.text.toLowerCase();
//     List<GetAllProductsModel> productsToFilter;

//     // First filter by company if selected
//     if (selectedCompanyId.value.isEmpty ||
//         selectedCompany.value == "All Companies") {
//       productsToFilter = List.from(getAllProducts);
//     } else {
//       productsToFilter = getAllProducts.where((product) {
//         String productCompanyId = product.companyId.toString();
//         String selectedId = selectedCompanyId.value.toString();
//         return productCompanyId == selectedId;
//       }).toList();
//     }

//     // Then filter by search query
//     if (query.isEmpty) {
//       filteredProducts.value = productsToFilter;
//     } else {
//       filteredProducts.value = productsToFilter.where((product) {
//         return product.productName?.toLowerCase().contains(query) == true;
//       }).toList();
//     }
//   }

//   /// Filter companies based on search query
//   void filterCompanies() {
//     final query = companySearchController.text.toLowerCase();
//     if (query.isEmpty) {
//       filteredCompanies.value = List.from(getAllCompanies);
//     } else {
//       filteredCompanies.value = getAllCompanies.where((company) {
//         return company.companyName?.toLowerCase().contains(query) == true;
//       }).toList();
//     }
//   }

//   // ╔══════════════════════════════════════════════════════════════════════════════╗
//   // ║                            COMPANY SELECTION METHODS                         ║
//   // ╚══════════════════════════════════════════════════════════════════════════════╝

//   /// Select a company for filtering products
//   /// Updates selected company, clears search, and re-filters products
//   void selectCompany(String companyName, [String? companyId]) {
//     selectedCompany.value = companyName;
//     selectedCompanyId.value = companyId ?? "";
//     companySearchController.clear();
//     Get.back();
//     filterProducts();
//     calculateTotals(); // Recalculate totals when company changes
//   }

//   /// Clear the company search field and reset filter
//   void clearCompanySearch() {
//     companySearchController.clear();
//     filteredCompanies.value = List.from(getAllCompanies);
//   }

//   // ╔══════════════════════════════════════════════════════════════════════════════╗
//   // ║                            UTILITY METHODS                                   ║
//   // ╚══════════════════════════════════════════════════════════════════════════════╝

//   /// Get company ID for a specific product
//   /// Used internally to group products by company
//   String _getProductCompanyId(String productId) {
//     final product = getAllProducts.firstWhere(
//       (p) => p.productId == productId,
//       orElse: () => GetAllProductsModel(),
//     );
//     return product.companyId?.toString() ?? '';
//   }

//   /// Get the count of products available for a specific company
//   int getProductsCountForCompany(String companyId) {
//     if (companyId.isEmpty) return getAllProducts.length;
//     return getAllProducts.where((product) {
//       return product.companyId.toString() == companyId;
//     }).length;
//   }

//   /// Refresh all data by re-fetching products and companies
//   void refreshData() {
//     fetchProducts();
//     fetchCompanies();
//   }

//   /// Reset all controller state to initial values
//   /// Used when starting a new order or clearing current state
//   void resetState() {
//     selectedProducts.clear();
//     totalAmount.value = 0.0;
//     totalItems.value = 0;
//     companyTotal.value = 0.0;
//     companyTotalItems.value = 0;
//     selectedCompanyId.value = "";
//     selectedCompany.value = "All Companies";
//     searchController.clear();
//     companySearchController.clear();
//     filteredProducts.value = List.from(getAllProducts);
//     filteredCompanies.value = List.from(getAllCompanies);
//   }

//   /// Notify the CreateOrderController about changes to the order
//   /// This keeps the order creation screen updated with latest data
//   void notifyCreateOrderController() {
//     if (Get.isRegistered<CreateOrderController>()) {
//       final createOrderController = Get.find<CreateOrderController>();
//       createOrderController.updateOrderData(
//         selectedProducts.toList(),
//         totalAmount.value,
//         totalItems.value,
//       );
//     }
//   }
// }
