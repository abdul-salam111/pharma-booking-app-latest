// ============================================================================
// HOME CONTROLLER
// ============================================================================
import 'dart:async';

import 'package:pharma_booking_app/core/utils/current_user_helper.dart';
import 'package:pharma_booking_app/core/utils/error_popup.dart';
import 'package:pharma_booking_app/modules/common/domain/all_products_domain/domain/usecases/products_usecases/product_local_usecases/clear_local_packings_usecase.dart';
import 'package:pharma_booking_app/modules/common/domain/all_products_domain/domain/usecases/products_usecases/product_local_usecases/insert_packings_locally_usecase.dart';
import 'package:pharma_booking_app/modules/common/domain/all_products_domain/domain/usecases/products_usecases/product_remote_usecases/get_all_remote_packings_usecase.dart';
import 'package:pharma_booking_app/modules/common/domain/create_order_domain/domain/usecases/local_usecases/manage_order_local_usecases/get_failed_orders_usecase.dart';

import 'package:pharma_booking_app/modules/common/domain/create_order_domain/domain/usecases/local_usecases/manage_order_syncing_and_unsycing_usecases/mark_order_as_not_failed_usecase.dart';

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
    // Product usecases
    required this.getAllProductsUsecase,
    required this.getAllLocalProductsUsecase,
    required this.insertProductsLocallyUsecase,
    required this.clearLocalProductsUsecase,
    // Company usecases
    required this.getAllCompaniesUsecase,
    required this.getAllLocalCompaniesUsecase,
    required this.insertLocalCompaniesUsecase,
    required this.clearLocalCompaniesUsecase,
    // Customer remote usecases
    required this.getAllCustomersUsecase,
    required this.getAllTownsUsecase,
    required this.getAllSectorsUseCase,

    // Customer local usecases
    required this.getAllLocalCustomersUsecase,
    required this.getAllLocalSubAreasUsecase,
    required this.getAllLocalAreasUsecase,
    required this.insertAllCustomersLocalUsecase,
    required this.insertAllSubAreasLocalUsecase,
    required this.insertAllAreasLocalUsecase,

    required this.clearCustomersLocalUsecase,
    required this.clearSubAreasLocalUsecase,
    required this.clearAreasLocalUsecase,

    // Orders usecases
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
    _initializeCards();
    _initializeData();
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
    // Load local data first for instant UI update
    unawaited(loadLocalData());

    // Check if sync is needed
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
  // DATA SYNCHRONIZATION
  // ==========================================================================

  Future<void> syncAllData() async {
    if (isSyncingData.value) return;

    try {
      isSyncingData.value = true;
      AppToasts.showLoaderDialog(Get.context!, 'Syncing data...');

      // Phase 1: Fetch all remote data in parallel
      final results = await Future.wait([
        getAllCompaniesUsecase.call(NoParams()),
        getAllProductsUsecase.call(NoParams()),
        getAllCustomersUsecase.call(NoParams()),
        getAllSectorsUseCase.call(NoParams()),
        getAllTownsUsecase.call(NoParams()),
        getAllRemotePackingsUsecase.call(NoParams()),
      ]);

      // // Phase 2: Clear all local data in parallel
      await clearLocalCompaniesUsecase.call(NoParams());
      await clearLocalProductsUsecase.call(NoParams());
      await clearCustomersLocalUsecase.call(NoParams());
      await clearAreasLocalUsecase.call(NoParams());
      await clearSubAreasLocalUsecase.call(NoParams());
      await clearLocalPackingsUsecase.call(NoParams());

      // Phase 3: Insert all data in parallel
      await _insertAllDataInSequential(results);

      // // Phase 4: Reload local data
      await loadLocalData();

      await storage.setValues(StorageKeys.isDatasynced, 'true');

      AppToasts.dismiss(Get.context!);
      AppToasts.showSuccessToast(Get.context!, 'Data synced successfully!');
    } catch (error) {
      AppToasts.dismiss(Get.context!);
      AppToasts.showErrorToast(Get.context!, 'Sync failed: $error');
    } finally {
      isSyncingData.value = false;
    }
  }

  Future<void> _insertAllDataInSequential(List<dynamic> results) async {
    // Companies
    await results[0].fold(
      (error) =>
          throw Exception('Failed to insert companies: ${error.toString()}'),
      (companies) async => await insertLocalCompaniesUsecase.call(companies),
    );

    // Products
    await results[1].fold(
      (error) =>
          throw Exception('Failed to insert products: ${error.toString()}'),
      (products) async => await insertProductsLocallyUsecase.call(products),
    );

    // Customers
    await results[2].fold(
      (error) =>
          throw Exception('Failed to insert customers: ${error.toString()}'),
      (customers) async => await insertAllCustomersLocalUsecase.call(customers),
    );

    // Sectors
    await results[3].fold(
      (error) =>
          throw Exception('Failed to insert sectors: ${error.toString()}'),
      (sectors) async => await insertAllAreasLocalUsecase.call(sectors),
    );

    // Towns
    await results[4].fold(
      (error) => throw Exception('Failed to insert towns: ${error.toString()}'),
      (towns) async => await insertAllSubAreasLocalUsecase.call(towns),
    );

    // Packings
    await results[5].fold(
      (error) =>
          throw Exception('Failed to insert packings: ${error.toString()}'),
      (packings) async => await insertPackingsLocallyUsecase.call(packings),
    );
  }
  // ==========================================================================
  // LOCAL DATA MANAGEMENT
  // ==========================================================================

  Future<void> loadLocalData() async {
    if (isLoadingData.value) return;
    try {
      isLoadingData.value = true;
      // Fetch all local data in parallel for maximum performance
      final results = await Future.wait([
        getAllLocalCompaniesUsecase.call(NoParams()),
        getAllLocalProductsUsecase.call(NoParams()),
        getAllLocalCustomersUsecase.call(NoParams()),
        getAllLocalAreasUsecase.call(NoParams()),
        getAllLocalSubAreasUsecase.call(NoParams()),
        getCountUnsyncordersUsecase.call(NoParams()),
      ]);
      // Update all data lists
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
    // Companies
    results[0].fold(
      (error) =>
          throw Exception('Failed to load companies: ${error.toString()}'),
      (companies) => getCompaniesModel.value = companies,
    );

    // // Products
    results[1].fold(
      (error) =>
          throw Exception('Failed to load products: ${error.toString()}'),
      (products) => getAllProducts.value = products,
    );

    // Customers
    results[2].fold(
      (error) =>
          throw Exception('Failed to load customers: ${error.toString()}'),
      (customers) => getAllCustomers.value = customers,
    );

    // // Sectors
    results[3].fold(
      (error) => throw Exception('Failed to load sectors: ${error.toString()}'),
      (sectors) => getAllSectors.value = sectors,
    );

    // // Towns
    results[4].fold(
      (error) => throw Exception('Failed to load towns: ${error.toString()}'),
      (towns) => getAllTowns.value = towns,
    );

    // // unsync orders count
    results[5].fold(
      (error) => throw Exception(
        'Failed to load unsync orders count: ${error.toString()}',
      ),
      (count) => unsyncedOrdersCount.value = count,
    );
  }

  // ================= ORDER SYNCHRONIZATION =================
  Future<void> _syncOrders() async {
    // Check if already syncing to prevent multiple calls
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
              // Update synced orders
              await _updateSyncedOrders(orders, bookedOrders);

              // Update unsynced count
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
          orderTotalAmt: orders[i].totalAmount,
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
            rowTotal: product.rowTotal,
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

  // Helper method to download failed orders
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
            headers: const [
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
            ],
            rows: orders.expand((order) {
              return order.companies.expand((company) {
                return company.products.map((product) {
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

/// UI Card model for HomeScreen features.
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
