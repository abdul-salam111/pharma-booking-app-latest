import 'package:pharma_booking_app/core/utils/current_user_helper.dart';

import '../../../../../../core/utils/export_file.dart';
import '../../../../../../core/utils/export_orders.dart';
import '../../../../../../core/utils/type_conversion.dart';

import '../../../../domain/all_products_domain/domain/usecases/products_usecases/product_local_usecases/get_product_by_id_usecase.dart';
import '../../../home/presentation/barrel.dart';
import '../../../../domain/select_customer_domain/usecases/local_usecases/get_local_customer_by_id_usecase.dart';

class OrdersOnDateController extends GetxController {
  final GetProductByIdUsecase getProductByIdUsecase;
  final GetLocalCustomerByIdUsecase getLocalCustomerByIdUsecase;

  OrdersOnDateController({
    required this.getProductByIdUsecase,
    required this.getLocalCustomerByIdUsecase,
  });
  // Observable variables
  RxString selectedDate = ''.obs;
  RxList<OrderItemsForLocal> ordersForDate = <OrderItemsForLocal>[].obs;
  RxString syncStatus = 'No'.obs;
  RxInt totalOrders = 0.obs;
  RxDouble totalAmount = 0.0.obs;
  RxBool isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    _receiveDataFromArguments();
  }

  void _receiveDataFromArguments() {
    try {
      final arguments = Get.arguments as Map<String, dynamic>?;

      if (arguments != null) {
        selectedDate.value = arguments['date']?.toString() ?? '';
        syncStatus.value = arguments['syncStatus']?.toString() ?? 'No';

        // Safely convert to int
        totalOrders.value = safeToInt(arguments['totalOrders']);

        // Safely convert to double
        totalAmount.value = safeToDouble(arguments['totalAmount']);

        // Receive the orders list
        if (arguments['orders'] != null) {
          ordersForDate.value = List<OrderItemsForLocal>.from(
            arguments['orders'],
          );
        }
      }
    } catch (e) {
      print('Error receiving data from arguments: $e');
    }
  }

  // Helper method to get customer info
  String getCustomerAddress(OrderItemsForLocal order) {
    return order.customerAddress;
  }

  // Helper method to get order total
  double getOrderTotal(OrderItemsForLocal order) {
    return order.totalAmount;
  }

  // Helper method to get sync status icon
  String getSyncIcon(OrderItemsForLocal order) {
    return order.syncedStatus == 'Yes'
        ? "assets/icons/sync_success.png" // You might need to add this icon
        : "assets/icons/uploadcloud.png";
  }

  // Helper method to get order identifier
  String getOrderIdentifier(OrderItemsForLocal order) {
    return order.customerName;
  }

  /// Synchronizes unsynced orders with the server
  Future<void> exportAsJson() async {
    // Get all unsynced orders from database
    // Check if there are orders to sync
    if (ordersForDate.isEmpty) {
      return;
    }

    try {
      List<SyncOrdersModel> ordersList = [];

      for (int i = 0; i < ordersForDate.length; i++) {
        List<SyncOrderRow> orderRows = [];

        // Process each company and product in the order
        for (var company in ordersForDate[i].companies) {
          for (var product in company.products) {
            final getProductByIdResponse = await getProductByIdUsecase.call(
              product.productId.toIntOrNull!,
            );
            await getProductByIdResponse.fold(
              (error) {
                print('Error fetching product by ID: $error');
              },
              (productModel) {
                orderRows.add(
                  SyncOrderRow(
                    productId: int.parse(product.productId),
                    qtyPack: product.quantityPack,
                    qtyLose: product.quantityLose ?? 0,
                    bonus: product.bonus,
                    discRatio: product.discRatio,
                    pricePack: product.pricePack,
                    sTaxRatio: product.sTaxRatio ?? 0,
                    rowTotal: product.rowTotal.roundToDouble(),
                    packingId: product.packingId,
                    discValuePack: product.discValuePack ?? 0,
                  ),
                );
              },
            );
          }
        }
        final getCustomersModel = await getLocalCustomerByIdUsecase.call(
          ordersForDate[i].customerId,
        );

        getCustomersModel.fold(
          (error) {
            print('Error fetching customer by ID: $error');
          },
          (getCustomersModel) {
            // Add order to data list
            ordersList.add(
              SyncOrdersModel(
                deviceOrderGuid: ordersForDate[i].guid,
                customerId: getCustomersModel?.id,
                salesmanId: CurrentUserHelper.salesmanId,
                deviceOrderDateTime: ordersForDate[i].orderDate,
                orderTotalAmt: ordersForDate[i].totalAmount.roundToDouble(),
                orderRows: orderRows,
              ),
            );
          },
        );
      }

      await saveTextFile(
        "${selectedDate.value} orders",
        "${ordersList.map((orders) => orders.toJson()).toList()}",
      );
    } catch (e) {
      AppToasts.showErrorToast(Get.context!, 'Sync error: $e');
    }
  }

  // Helper method to download failed orders
  Future<void> exportAsExcel() async {
    try {
      ExcelExporter.export(
        sheetName: "Orders",
        fileName: "${DateTime.now().formatDate()} orders.xlsx",
        headers: CurrentUserHelper.softwareVersion == "1"
            ? const [
                "Order Guid",
                "Customer Name",
                "Customer Address",
                "Order Date",
                "Order Status",
                "Company Name",
                "Product Name",
                "Price",
                "Quantity",
                "Bonus",
                "Discount %",
              ]
            : const [
                "Order Guid",
                "Customer Name",
                "Customer Address",
                "Order Date",
                "Order Status",
                "Company Name",
                "Product Name",
                "Price Pack",
                "Packing",
                "Quantity Pack",
                "Quantity Lose",
                "Bonus",
                "Discount %",
              ],
        rows: ordersForDate.expand((order) {
          return order.companies.expand((company) {
            return company.products.map((product) {
              if (CurrentUserHelper.softwareVersion == "1") {
                return [
                  order.guid.toString(),
                  order.customerName,
                  order.customerAddress,
                  DateTime.parse(order.orderDate.toString()).formatDate(),
                  order.syncedStatus == "No" ? "Unsynced" : "Synced",
                  company.companyName,
                  product.productName,
                  product.pricePack.toStringAsFixed(1),
                  product.quantityPack.toString(),
                  product.bonus.toString(),
                  product.discRatio?.toStringAsFixed(0) ?? "0",
                ];
              }

              // SOFTWARE VERSION != 1
              return [
                order.guid.toString(),
                order.customerName,
                order.customerAddress,
                DateTime.parse(order.orderDate.toString()).formatDate(),
                order.syncedStatus == "No" ? "Unsynced" : "Synced",
                company.companyName,
                product.productName,
                product.pricePack.toString(),
                "${product.packingName.toString()} x ${product.multiplier.toString()}",

                product.quantityPack.toString(),
                product.quantityLose?.toString() ?? "0",
                product.bonus.toString(),
                product.discRatio?.toStringAsFixed(0) ?? "0",
              ];
            });
          });
        }).toList(),
      );
    } catch (error) {
      AppToasts.dismiss(Get.context!);
      AppToasts.showErrorToast(Get.context!, 'Failed to export orders: $error');
    }
  }
}
