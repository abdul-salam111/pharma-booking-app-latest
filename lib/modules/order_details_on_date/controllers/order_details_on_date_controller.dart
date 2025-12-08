import '../../home/presentation/barrel.dart';

class OrderDetailsOnDateController extends GetxController {
  final GetAllLocalProductsUsecase getAllLocalProductsUsecase;
  final GetAllLocalCompaniesUsecase getAllLocalCompaniesUsecase;
  final GetAllLocalAreasUsecase getAllLocalSectorsUsecase;
  final GetAllLocalSubAreasUsecase getAllLocalTownsUsecase;
  OrderDetailsOnDateController({
    required this.getAllLocalProductsUsecase,
    required this.getAllLocalCompaniesUsecase,
    required this.getAllLocalSectorsUsecase,
    required this.getAllLocalTownsUsecase,
  });

  final Rx<OrderItemsForLocal?> order = Rx<OrderItemsForLocal?>(null);
  final RxInt orderIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
    _receiveOrderData();
  }

  void _receiveOrderData() {
    try {
      final arguments = Get.arguments as Map<String, dynamic>?;

      if (arguments != null) {
        order.value = arguments['order'] as OrderItemsForLocal?;
        orderIndex.value = arguments['orderIndex'] as int? ?? 0;
      }
    } catch (e) {
      print('Error receiving order data: $e');
    }
  }

  // Get formatted date and time
  String getFormattedOrderDate() {
    if (order.value == null) return "N/A";
    return "${_formatDate(order.value!.orderDate)}, ${_formatTime(order.value!.orderDate)}";
  }

  String getFormattedSyncDate() {
    if (order.value == null || order.value!.syncDate == null) {
      return "Not Synced";
    }
    return "${_formatDate(order.value!.syncDate!)}, ${_formatTime(order.value!.syncDate!)}";
  }

  String _formatDate(DateTime date) {
    return "${date.day.toString().padLeft(2, '0')}/${date.month.toString().padLeft(2, '0')}/${date.year}";
  }

  String _formatTime(DateTime date) {
    final hour = date.hour % 12;
    final period = date.hour < 12 ? 'AM' : 'PM';
    return "${hour == 0 ? 12 : hour}:${date.minute.toString().padLeft(2, '0')} $period";
  }

  // Get total items count
  int getTotalItems() {
    if (order.value == null) return 0;
    return order.value!.companies.fold(
      0,
      (sum, company) => sum + company.products.length,
    );
  }

  // Get company-wise product count
  int getCompanyProductCount(OrderCompanies company) {
    return company.products.length;
  }

  void editOrder() async {
    if (order.value == null) return;

    try {
      // Get all products and companies for the order
      List<GetAllProductsModel> allProducts = [];
      final productresponse = await getAllLocalProductsUsecase.call(NoParams());
      productresponse.fold((l) => allProducts = [], (r) => allProducts = r);
      List<CompaniesModel> allCompanies = [];
      final companyResponse = await getAllLocalCompaniesUsecase.call(
        NoParams(),
      );
      companyResponse.fold((l) => allCompanies = [], (r) => allCompanies = r);

      // Create selected products list with proper companyOrderId mapping
      final selectedProducts = <OrderProducts>[];

      for (final company in order.value!.companies) {
        for (final product in company.products) {
          // Find the actual product to get the correct companyId
          GetAllProductsModel? actualProduct;
          try {
            actualProduct = allProducts.firstWhere(
              (p) => p.id.toString() == product.productId,
            );
          } catch (e) {
            actualProduct = null;
          }

          // Use the company ID from the order company or find it from the actual product
          String companyId = company.companyId;
          if (actualProduct != null && actualProduct.companyId != null) {
            companyId = actualProduct.companyId.toString();
          }

          selectedProducts.add(
            OrderProducts(
              companyOrderId: int.tryParse(companyId) ?? 0,
              productId: product.productId,
              productName: product.productName,
              quantity: product.quantity,
              price: product.price,
              bonus: product.bonus,
              discRatio: product.discRatio,
            ),
          );
        }
      }

      // Parse customer address to get sector and town
      final addressParts = order.value!.customerAddress.split('-');
      final sectorName = addressParts.first.trim();
      final townName = addressParts.last.trim();

      // Fetch sector and town from database
      List<GetAreaListModel> allSectors = [];
      List<GetSubAreaListModel> allTowns = [];
      final allSectorsResponse = await getAllLocalSectorsUsecase.call(
        NoParams(),
      );
       allSectorsResponse.fold((l) => allSectors = [], (r) => allSectors = r);
      final allTownsResponse = await getAllLocalTownsUsecase.call(NoParams());
      allTownsResponse.fold((l) => allTowns = [], (r) => allTowns = r);

      final selectedSector = allSectors.firstWhere(
        (sector) => sector.name == sectorName,
        orElse: () => GetAreaListModel(name: sectorName),
      );

      final selectedTown = allTowns.firstWhere(
        (town) => town.name == townName,
        orElse: () => GetSubAreaListModel(name: townName),
      );

      // Create customer model
      final selectedCustomer = GetCustomersModel(
        customerName: order.value!.customerName,
        // customerId: order.value!.customerId,
         address: order.value!.customerAddress,
        id: order.value!.customerId.toIntOrNull,
      );

      Get.toNamed(
        Routes.CREATE_ORDER,
        arguments: {
          'selectedCustomer': selectedCustomer,
          'selectedSector': selectedSector,
          'selectedTown': selectedTown,
          'selectedProducts': selectedProducts,
          'getAllProducts': allProducts,
          'getCompaniesModel': allCompanies,
          'isEditing': true,
          'existingOrder': order.value,
          'orderId': order.value?.orderId,
        },
      );
    } catch (e) {
      print('Error fetching data for editing: $e');
      Get.snackbar('Error', 'Failed to load order data for editing');
    }
  }
}
