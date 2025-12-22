// ============================================================================
// HOME CONTROLLER - COMPLETE SYNC CYCLE PER ITEM
// ============================================================================
import 'dart:async';

import 'package:pharma_booking_app/core/utils/current_user_helper.dart';
import 'package:pharma_booking_app/core/utils/error_popup.dart';
import 'package:pharma_booking_app/modules/common/domain/all_products_domain/domain/usecases/products_usecases/product_local_usecases/clear_local_packings_usecase.dart';
import 'package:pharma_booking_app/modules/common/domain/all_products_domain/domain/usecases/products_usecases/product_local_usecases/insert_packings_locally_usecase.dart';
import 'package:pharma_booking_app/modules/common/domain/all_products_domain/domain/usecases/products_usecases/product_remote_usecases/get_all_remote_packings_usecase.dart';
import 'package:pharma_booking_app/modules/common/domain/create_order_domain/domain/usecases/local_usecases/manage_order_local_usecases/get_failed_orders_usecase.dart';
import 'package:pharma_booking_app/modules/common/domain/create_order_domain/domain/usecases/local_usecases/manage_order_syncing_and_unsycing_usecases/mark_order_as_not_failed_usecase.dart';

import '../../../../../../core/utils/data_sync_popup.dart';
import '../../../../../../core/utils/export_orders.dart';
import '../../../../../../core/utils/success_popup.dart';
import '../../../../../../core/utils/warning_popup.dart';
import '../../../../data/create_order_data/data/models/response_models/get_order_response/get_order_response.dart';
import '../../../../domain/create_order_domain/domain/usecases/local_usecases/manage_order_syncing_and_unsycing_usecases/increment_sync_tries_usecase.dart';
import '../../../../domain/create_order_domain/domain/usecases/local_usecases/manage_order_syncing_and_unsycing_usecases/mark_order_as_failed_usecase.dart';
import '../../../../domain/select_customer_domain/usecases/local_usecases/insert_sub_areas_local_usecase.dart';
import '../barrel.dart';

class HomeController extends GetxController {
  // ==========================================================================
  // PRODUCT USECASES
  // ==========================================================================
  final GetAllRemoteProductsUsecase getAllProductsUsecase;
  final GetAllLocalProductsUsecase getAllLocalProductsUsecase;
  final InsertProductsLocallyUsecase insertProductsLocallyUsecase;
  final ClearLocalProductsUsecase clearLocalProductsUsecase;

  // ==========================================================================
  // PACKINGS USECASES
  // ==========================================================================
  final GetAllRemotePackingsUsecase getAllRemotePackingsUsecase;
  final InsertPackingsLocallyUsecase insertPackingsLocallyUsecase;
  final ClearLocalPackingsUsecase clearLocalPackingsUsecase;

  // ==========================================================================
  // COMPANY USECASES
  // ==========================================================================
  final GetAllCompaniesUsecase getAllCompaniesUsecase;
  final GetAllLocalCompaniesUsecase getAllLocalCompaniesUsecase;
  final InsertLocalCompaniesUsecase insertLocalCompaniesUsecase;
  final ClearLocalCompaniesUsecase clearLocalCompaniesUsecase;

  // ==========================================================================
  // CUSTOMER REMOTE USECASES
  // ==========================================================================
  final GetAllCustomersUsecase getAllCustomersUsecase;
  final GetAllTownsUsecase getAllTownsUsecase;
  final GetAllSectorsUsecase getAllSectorsUseCase;

  // ==========================================================================
  // CUSTOMER LOCAL USECASES
  // ==========================================================================
  final GetAllLocalCustomersUsecase getAllLocalCustomersUsecase;
  final GetAllLocalSubAreasUsecase getAllLocalSubAreasUsecase;
  final GetAllLocalAreasUsecase getAllLocalAreasUsecase;
  final InsertAllCustomersLocalUsecase insertAllCustomersLocalUsecase;
  final InsertAllSubAreasLocalUsecase insertAllSubAreasLocalUsecase;
  final InsertAllAreasLocalUsecase insertAllAreasLocalUsecase;
  final ClearCustomersLocalUsecase clearCustomersLocalUsecase;
  final ClearTownsLocalUsecase clearSubAreasLocalUsecase;
  final ClearSectorsLocalUsecase clearAreasLocalUsecase;

  // ==========================================================================
  // Orders LOCAL USECASES
  // ==========================================================================
  final GetUnsyncOrdersUsecase getUnsyncOrdersUsecase;
  final GetCountUnsyncordersUsecase getCountUnsyncordersUsecase;
  final UpdateOrdersSyncStatusUsecase updateOrdersSyncStatusUsecase;
  final CreateOrdersRemotelyUsecase createOrdersRemotelyUsecase;
  final MarkOrderAsFailedUsecase markOrderAsFailedUsecase;
  final MarkOrderAsNotFailedUsecase markOrderAsNotFailedUsecase;
  final IncrementSyncTriesUsecase incrementSyncTriesUsecase;
  final GetFailedOrdersUsecase getFailedOrdersUsecase;

  // ==========================================================================
  // CONSTRUCTOR
  // ==========================================================================
  HomeController({
    required this.getAllRemotePackingsUsecase,
    required this.insertPackingsLocallyUsecase,
    required this.clearLocalPackingsUsecase,
    required this.getAllProductsUsecase,
    required this.getAllLocalProductsUsecase,
    required this.insertProductsLocallyUsecase,
    required this.clearLocalProductsUsecase,
    required this.getAllCompaniesUsecase,
    required this.getAllLocalCompaniesUsecase,
    required this.insertLocalCompaniesUsecase,
    required this.clearLocalCompaniesUsecase,
    required this.getAllCustomersUsecase,
    required this.getAllTownsUsecase,
    required this.getAllSectorsUseCase,
    required this.getAllLocalCustomersUsecase,
    required this.getAllLocalSubAreasUsecase,
    required this.getAllLocalAreasUsecase,
    required this.insertAllCustomersLocalUsecase,
    required this.insertAllSubAreasLocalUsecase,
    required this.insertAllAreasLocalUsecase,
    required this.clearCustomersLocalUsecase,
    required this.clearSubAreasLocalUsecase,
    required this.clearAreasLocalUsecase,
    required this.getUnsyncOrdersUsecase,
    required this.getCountUnsyncordersUsecase,
    required this.updateOrdersSyncStatusUsecase,
    required this.createOrdersRemotelyUsecase,
    required this.markOrderAsFailedUsecase,
    required this.markOrderAsNotFailedUsecase,
    required this.incrementSyncTriesUsecase,
    required this.getFailedOrdersUsecase,
  });

  // ==========================================================================
  // STATE MANAGEMENT
  // ==========================================================================
  final RxBool isLoadingData = false.obs;
  final RxBool isSyncingData = false.obs;
  final RxInt unsyncedOrdersCount = 0.obs;

  // ==========================================================================
  // SYNC PROGRESS TRACKING
  // ==========================================================================
  late final RxList<SyncItem> syncItems;

  // ==========================================================================
  // DATA LISTS
  // ==========================================================================
  final RxList<GetAllProductsModel> getAllProducts =
      <GetAllProductsModel>[].obs;
  final RxList<CompaniesModel> getCompaniesModel = <CompaniesModel>[].obs;
  final RxList<GetAreaListModel> getAllSectors = <GetAreaListModel>[].obs;
  final RxList<GetSubAreaListModel> getAllTowns = <GetSubAreaListModel>[].obs;
  final RxList<GetCustomersModel> getAllCustomers = <GetCustomersModel>[].obs;

  // ==========================================================================
  // UI CONFIGURATION
  // ==========================================================================
  late final List<CardModel> cardList;

  // ==========================================================================
  // LIFECYCLE METHODS
  // ==========================================================================
  @override
  void onInit() {
    super.onInit();
    _initializeSyncItems();
    _initializeCards();
    _initializeData();
  }

  // ==========================================================================
  // INITIALIZE SYNC ITEMS
  // ==========================================================================
  void _initializeSyncItems() {
    syncItems = <SyncItem>[
      SyncItem(name: 'Companies'),
      SyncItem(name: 'Products'),
      SyncItem(name: 'Customers'),
      SyncItem(name: 'Areas'),
      SyncItem(name: 'Towns'),
      SyncItem(name: 'Packings'),
    ].obs;
  }

  // ==========================================================================
  // INITIALIZATION OF CARDS FOR THE HOME SCREEN
  // ==========================================================================
  void _initializeCards() {
    cardList = [
      CardModel(
        cardColor: const Color(0xffA2CDFF),
        cardIcon: "assets/icons/cloud_upload.png",
        cardName: "Export Orders",
        onTap: _handleExportOrders,
        textColor: const Color(0xff0872EB),
      ),
      CardModel(
        cardColor: const Color(0xffBEBAFD),
        cardIcon: "assets/icons/order_summary.png",
        cardName: "Order Summary",
        onTap: _navigateToOrderSummary,
        textColor: const Color(0xff350BBF),
      ),
      CardModel(
        cardColor: const Color(0xff90FDF0),
        cardIcon: "assets/icons/syncdata.png",
        cardName: "Import Data",
        onTap: syncAllData,
        textColor: const Color(0xff09877A),
      ),
      CardModel(
        cardColor: const Color(0xffFFA2A2),
        cardIcon: "assets/icons/recover.png",
        cardName: "Recover",
        onTap: _navigateToRecovery,
        textColor: const Color(0xffED1D16),
      ),
    ];
  }

  Future<void> _initializeData() async {
    unawaited(loadLocalData());

    final isDataSynced = await storage.readValues(StorageKeys.isDatasynced);

    if (isDataSynced == null || isDataSynced == 'false') {
      Future.delayed(const Duration(seconds: 1), syncAllData);
    }
  }

  // ==========================================================================
  // NAVIGATION HANDLERS
  // ==========================================================================
  void _handleExportOrders() async {
    await _syncOrders();
  }

  void _navigateToOrderSummary() {
    Get.toNamed(Routes.ORDERS_SUMMARY);
  }

  void _navigateToRecovery() {
    Get.toNamed(Routes.RECOVERY);
  }

  // ==========================================================================
  // DATA SYNCHRONIZATION - COMPLETE CYCLE PER ITEM
  // ==========================================================================
  Future<void> syncAllData() async {
    if (isSyncingData.value) return;

    try {
      isSyncingData.value = true;

      // Reset all sync items to pending
      for (var item in syncItems) {
        item.status.value = SyncStatus.pending;
      }

      // Show sync progress dialog
      showDialog(
        context: Get.context!,
        barrierDismissible: false,
        builder: (context) => SyncProgressDialog(syncItems: syncItems),
      );

      // Sync each item completely (fetch -> clear -> insert)
      await _syncCompanies();
      await _syncProducts();
      await _syncCustomers();
      await _syncAreas();
      await _syncTowns();
      await _syncPackings();

      // Reload local data
      await loadLocalData();

      await storage.setValues(StorageKeys.isDatasynced, 'true');

      // Close dialog
      Get.back();

      AppToasts.showSuccessToast(Get.context!, 'Data synced successfully!');
    } catch (error) {
      // Close dialog
      Get.back();

      AppToasts.showErrorToast(Get.context!, 'Sync failed: $error');
    } finally {
      isSyncingData.value = false;
    }
  }

  // ==========================================================================
  // INDIVIDUAL SYNC METHODS - FETCH -> CLEAR -> INSERT -> COMPLETE
  // ==========================================================================

  Future<void> _syncCompanies() async {
    syncItems[0].status.value = SyncStatus.syncing;
    try {
      // Fetch from remote
      final remoteResult = await getAllCompaniesUsecase.call(NoParams());

      // Clear local data
      await clearLocalCompaniesUsecase.call(NoParams());

      // Insert to local
      await remoteResult.fold(
        (error) =>
            throw Exception('Failed to sync companies: ${error.toString()}'),
        (companies) async => await insertLocalCompaniesUsecase.call(companies),
      );

      syncItems[0].status.value = SyncStatus.completed;
      await Future.delayed(const Duration(milliseconds: 300));
    } catch (e) {
      syncItems[0].status.value = SyncStatus.failed;
      throw Exception('Failed to sync companies: $e');
    }
  }

  Future<void> _syncProducts() async {
    syncItems[1].status.value = SyncStatus.syncing;
    try {
      // Fetch from remote
      final remoteResult = await getAllProductsUsecase.call(NoParams());

      // Clear local data
      await clearLocalProductsUsecase.call(NoParams());

      // Insert to local
      await remoteResult.fold(
        (error) =>
            throw Exception('Failed to sync products: ${error.toString()}'),
        (products) async => await insertProductsLocallyUsecase.call(products),
      );

      syncItems[1].status.value = SyncStatus.completed;
      await Future.delayed(const Duration(milliseconds: 300));
    } catch (e) {
      syncItems[1].status.value = SyncStatus.failed;
      throw Exception('Failed to sync products: $e');
    }
  }

  Future<void> _syncCustomers() async {
    syncItems[2].status.value = SyncStatus.syncing;
    try {
      // Fetch from remote
      final remoteResult = await getAllCustomersUsecase.call(NoParams());

      // Clear local data
      await clearCustomersLocalUsecase.call(NoParams());

      // Insert to local
      await remoteResult.fold(
        (error) =>
            throw Exception('Failed to sync customers: ${error.toString()}'),
        (customers) async =>
            await insertAllCustomersLocalUsecase.call(customers),
      );

      syncItems[2].status.value = SyncStatus.completed;
      await Future.delayed(const Duration(milliseconds: 300));
    } catch (e) {
      syncItems[2].status.value = SyncStatus.failed;
      throw Exception('Failed to sync customers: $e');
    }
  }

  Future<void> _syncAreas() async {
    syncItems[3].status.value = SyncStatus.syncing;
    try {
      // Fetch from remote
      final remoteResult = await getAllSectorsUseCase.call(NoParams());

      // Clear local data
      await clearAreasLocalUsecase.call(NoParams());

      // Insert to local
      await remoteResult.fold(
        (error) => throw Exception('Failed to sync areas: ${error.toString()}'),
        (areas) async => await insertAllAreasLocalUsecase.call(areas),
      );

      syncItems[3].status.value = SyncStatus.completed;
      await Future.delayed(const Duration(milliseconds: 300));
    } catch (e) {
      syncItems[3].status.value = SyncStatus.failed;
      throw Exception('Failed to sync areas: $e');
    }
  }

  Future<void> _syncTowns() async {
    syncItems[4].status.value = SyncStatus.syncing;
    try {
      // Fetch from remote
      final remoteResult = await getAllTownsUsecase.call(NoParams());

      // Clear local data
      await clearSubAreasLocalUsecase.call(NoParams());

      // Insert to local
      await remoteResult.fold(
        (error) => throw Exception('Failed to sync towns: ${error.toString()}'),
        (towns) async => await insertAllSubAreasLocalUsecase.call(towns),
      );

      syncItems[4].status.value = SyncStatus.completed;
      await Future.delayed(const Duration(milliseconds: 300));
    } catch (e) {
      syncItems[4].status.value = SyncStatus.failed;
      throw Exception('Failed to sync towns: $e');
    }
  }

  Future<void> _syncPackings() async {
    syncItems[5].status.value = SyncStatus.syncing;
    try {
      // Fetch from remote
      final remoteResult = await getAllRemotePackingsUsecase.call(NoParams());

      // Clear local data
      await clearLocalPackingsUsecase.call(NoParams());

      // Insert to local
      await remoteResult.fold(
        (error) =>
            throw Exception('Failed to sync packings: ${error.toString()}'),
        (packings) async => await insertPackingsLocallyUsecase.call(packings),
      );

      syncItems[5].status.value = SyncStatus.completed;
      await Future.delayed(const Duration(milliseconds: 300));
    } catch (e) {
      syncItems[5].status.value = SyncStatus.failed;
      throw Exception('Failed to sync packings: $e');
    }
  }

  // ==========================================================================
  // LOCAL DATA MANAGEMENT
  // ==========================================================================
  Future<void> loadLocalData() async {
    if (isLoadingData.value) return;
    try {
      isLoadingData.value = true;
      final results = await Future.wait([
        getAllLocalCompaniesUsecase.call(NoParams()),
        getAllLocalProductsUsecase.call(NoParams()),
        getAllLocalCustomersUsecase.call(NoParams()),
        getAllLocalAreasUsecase.call(NoParams()),
        getAllLocalSubAreasUsecase.call(NoParams()),
        getCountUnsyncordersUsecase.call(NoParams()),
      ]);
      _updateDataLists(results);
    } catch (error) {
      AppToasts.showErrorToast(
        Get.context!,
        'Failed to load local data: $error',
      );
    } finally {
      isLoadingData.value = false;
    }
  }

  void _updateDataLists(List<dynamic> results) {
    results[0].fold(
      (error) =>
          throw Exception('Failed to load companies: ${error.toString()}'),
      (companies) => getCompaniesModel.value = companies,
    );

    results[1].fold(
      (error) =>
          throw Exception('Failed to load products: ${error.toString()}'),
      (products) => getAllProducts.value = products,
    );

    results[2].fold(
      (error) =>
          throw Exception('Failed to load customers: ${error.toString()}'),
      (customers) => getAllCustomers.value = customers,
    );

    results[3].fold(
      (error) => throw Exception('Failed to load sectors: ${error.toString()}'),
      (sectors) => getAllSectors.value = sectors,
    );

    results[4].fold(
      (error) => throw Exception('Failed to load towns: ${error.toString()}'),
      (towns) => getAllTowns.value = towns,
    );

    results[5].fold(
      (error) => throw Exception(
        'Failed to load unsync orders count: ${error.toString()}',
      ),
      (count) => unsyncedOrdersCount.value = count,
    );
  }

  // ================= ORDER SYNCHRONIZATION =================
  Future<void> _syncOrders() async {
    if (isSyncingData.value) return;

    try {
      isSyncingData.value = true;
      final ordersResponse = await getUnsyncOrdersUsecase.call(NoParams());

      await ordersResponse.fold(
        (error) {
          AppToasts.showErrorToast(
            Get.context!,
            'Failed to fetch orders: ${error.toString()}',
          );
        },
        (orders) async {
          if (orders.isEmpty && unsyncedOrdersCount.value == 0) {
            AppToasts.showWarningToast(Get.context!, 'No orders found.');
            return;
          }

          AppToasts.showLoaderDialog(Get.context!, 'Syncing orders...');
          final syncModel = await _prepareSyncModel(orders);

          final remoteOrdersResponse = await createOrdersRemotelyUsecase.call(
            syncModel,
          );

          await remoteOrdersResponse.fold(
            (error) async {
              AppToasts.dismiss(Get.context!);
              await showDialog(
                context: Get.context!,
                barrierDismissible: false,
                builder: (BuildContext context) {
                  return ErrorPopup(failedOrders: orders.length);
                },
              );
            },
            (bookedOrders) async {
              await _updateSyncedOrders(orders, bookedOrders);

              final updateUnsynccount = await getCountUnsyncordersUsecase.call(
                NoParams(),
              );
              await updateUnsynccount.fold((error) {}, (count) {
                unsyncedOrdersCount.value = count;
              });

              AppToasts.dismiss(Get.context!);
            },
          );
        },
      );
    } catch (error) {
      AppToasts.dismiss(Get.context!);
      AppToasts.showErrorToast(Get.context!, 'Sync failed: $error');
    } finally {
      isSyncingData.value = false;
    }
  }

  Future<List<SyncOrdersModel>> _prepareSyncModel(
    List<OrderItemsForLocal> orders,
  ) async {
    final ordersList = <SyncOrdersModel>[];

    for (int i = 0; i < orders.length; i++) {
      final orderRows = _extractOrderRows(orders[i]);

      ordersList.add(
        SyncOrdersModel(
          deviceOrderGuid: orders[i].guid,
          customerId: int.tryParse(orders[i].customerId),
          salesmanId: CurrentUserHelper.salesmanId,
          deviceOrderDateTime: orders[i].orderDate,
          orderTotalAmt: orders[i].totalAmount.roundToDouble(),
          orderRows: orderRows,
        ),
      );
    }

    return ordersList;
  }

  List<SyncOrderRow> _extractOrderRows(OrderItemsForLocal order) {
    final orderRows = <SyncOrderRow>[];

    for (final company in order.companies) {
      for (final product in company.products) {
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
      }
    }

    return orderRows;
  }

  Future<void> _updateSyncedOrders(
    List<OrderItemsForLocal> orders,
    GetOrderResponse bookedOrders,
  ) async {
    for (int i = 0; i < bookedOrders.results!.length; i++) {
      if (bookedOrders.results![i].errors != null &&
          bookedOrders.results![i].errors!.isNotEmpty) {
        await markOrderAsFailedUsecase.call(
          MarkOrderAsFailedParams(orderId: orders[i].orderId!),
        );
        await incrementSyncTriesUsecase.call(
          IncrementSyncTriesParams(orderId: orders[i].orderId!),
        );
      } else {
        await updateOrdersSyncStatusUsecase.call({
          'orderId': orders[i].orderId,
          'isSynced': true,
        });
      }
    }
    if (bookedOrders.failedOrders == 0 && bookedOrders.successfulOrders != 0) {
      await showDialog(
        context: Get.context!,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return SuccessPopup(totalOrders: bookedOrders.successfulOrders ?? 0);
        },
      ).then((result) {
        if (result == 'view_orders') {
          Get.back();
          Get.toNamed(Routes.ORDERS_SUMMARY);
        } else if (result == 'continue') {}
      });
    } else if (bookedOrders.failedOrders != 0 &&
        bookedOrders.successfulOrders != 0) {
      await showDialog(
        context: Get.context!,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return WarningPopup(
            successfulOrders: bookedOrders.successfulOrders ?? 0,
            failedOrders: bookedOrders.failedOrders ?? 0,
          );
        },
      ).then((result) async {
        if (result == 'download') {
          await _downloadFailedOrders();
        } else if (result == 'continue') {}
      });
    } else {
      await showDialog(
        context: Get.context!,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return ErrorPopup(failedOrders: bookedOrders.failedOrders ?? 0);
        },
      ).then((result) {
        if (result == 'download') {
          _downloadFailedOrders();
        } else if (result == 'continue') {}
      });
    }
  }

  Future<void> _downloadFailedOrders() async {
    try {
      final response = await getFailedOrdersUsecase.call(NoParams());
      await response.fold(
        (error) {
          AppToasts.showErrorToast(
            Get.context!,
            'Failed to fetch failed orders: ${error.toString()}',
          );
        },
        (orders) {
          ExcelExporter.export(
            fileName: "failed_orders.xlsx",
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
            rows: orders.expand((order) {
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
        },
      );
    } catch (error) {
      AppToasts.dismiss(Get.context!);
      AppToasts.showErrorToast(Get.context!, 'Failed to export orders: $error');
    }
  }
}

// ============================================================================
// CARD MODEL
// ============================================================================
class CardModel {
  final Color cardColor;
  final String cardIcon;
  final String cardName;
  final VoidCallback onTap;
  final Color textColor;

  const CardModel({
    required this.cardColor,
    required this.cardIcon,
    required this.cardName,
    required this.onTap,
    required this.textColor,
  });
}
