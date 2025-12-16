// ignore_for_file: depend_on_referenced_packages

import 'package:intl/intl.dart';

import '../../../home/presentation/barrel.dart';
import '../../domain/enitity/order_summary_by_date.dart';
import '../../domain/usecases/get_all_local_orders_usecase.dart';

/// Controller for managing orders summary functionality
class OrdersSummaryController extends GetxController {
  // ==================== Dependencies ====================
  final GetAllLocalOrdersUsecase getAllLocalOrdersUsecase;

  OrdersSummaryController({required this.getAllLocalOrdersUsecase});

  // ==================== Observable State ====================
  final RxBool isLoading = false.obs;
  final RxList<OrderSummaryByDate> ordersSummaryByDate =
      <OrderSummaryByDate>[].obs;

  // ==================== Lifecycle Methods ====================
  @override
  void onInit() {
    super.onInit();
    fetchOrdersSummary();
  }

  // ==================== Public Methods ====================

  /// Fetches and processes all orders from the database
  /// Groups them by date and calculates summary statistics
  Future<void> fetchOrdersSummary() async {
    isLoading.value = true;

    final ordersResponse = await getAllLocalOrdersUsecase.call(NoParams());

    ordersResponse.fold(
      (error) => _handleFetchError(),
      (orders) => _processOrders(orders),
    );
  }

  /// Retrieves orders for a specific date
  List<OrderItemsForLocal> getOrdersForDate(String date) {
    final summary = ordersSummaryByDate.firstWhereOrNull(
      (item) => item.date == date,
    );
    return summary?.orders ?? [];
  }

  /// Refreshes the orders data
  Future<void> refreshData() async {
    await fetchOrdersSummary();
  }

  // ==================== Private Methods ====================

  /// Handles fetch error by stopping the loading state
  void _handleFetchError() {
    isLoading.value = false;
  }

  /// Processes fetched orders and creates summary by date
  void _processOrders(List<OrderItemsForLocal> orders) {
    isLoading.value = false;

    if (orders.isEmpty) {
      ordersSummaryByDate.clear();
      return;
    }

    final groupedByDate = _groupOrdersByDate(orders);
    final summaryList = _createSummaryList(groupedByDate);

    // Sort by date (most recent first)
    summaryList.sort((a, b) => b.actualDate.compareTo(a.actualDate));

    ordersSummaryByDate.value = summaryList;
  }

  /// Groups orders by formatted date string
  Map<String, List<OrderItemsForLocal>> _groupOrdersByDate(
    List<OrderItemsForLocal> orders,
  ) {
    final Map<String, List<OrderItemsForLocal>> groupedByDate = {};
    for (var order in orders) {
      final dateKey = DateFormat('dd MMM yyyy').format(order.orderDate);
      if (!groupedByDate.containsKey(dateKey)) {
        groupedByDate[dateKey] = [];
      }
      groupedByDate[dateKey]!.add(order);
    }
    return groupedByDate;
  }

  /// Creates summary objects for each date group
  List<OrderSummaryByDate> _createSummaryList(
    Map<String, List<OrderItemsForLocal>> groupedByDate,
  ) {
    final List<OrderSummaryByDate> summaryList = [];
    groupedByDate.forEach((dateKey, ordersForDate) {
      final syncStatus = _calculateSyncStatus(ordersForDate);
      final totalOrders = ordersForDate.length;
      final totalAmount = _calculateTotalAmount(ordersForDate);
      final actualDate = ordersForDate.first.orderDate;
      summaryList.add(
        OrderSummaryByDate(
          date: dateKey,
          actualDate: actualDate,
          syncStatus: syncStatus,
          totalOrders: totalOrders,
          totalAmount: totalAmount,
          orders: ordersForDate,
        ),
      );
    });

    return summaryList;
  }

  /// Calculates sync status based on all orders
  String _calculateSyncStatus(List<OrderItemsForLocal> orders) {
    // Check if all orders are synced
    final allSynced = orders.every((order) => order.syncedStatus == 'Yes');

    // Check if all orders are not synced
    final allUnsynced = orders.every((order) => order.syncedStatus == 'No');

    if (allSynced) {
      return 'All';
    } else if (allUnsynced) {
      return 'UnSynced';
    } else {
      return 'Partial';
    }
  }

  /// Calculates total amount from all orders
  double _calculateTotalAmount(List<OrderItemsForLocal> orders) {
    return orders.fold(0.0, (sum, order) => sum + order.totalAmount);
  }
}
