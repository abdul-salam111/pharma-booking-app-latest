
import '../../../../core/shared/models/post_models/create_order_for_local.dart';

class OrderSummaryByDate {
  final String date;
  final DateTime actualDate;
  final String syncStatus;
  final int totalOrders;
  final double totalAmount;
  final List<OrderItemsForLocal> orders;

  OrderSummaryByDate({
    required this.date,
    required this.actualDate,
    required this.syncStatus,
    required this.totalOrders,
    required this.totalAmount,
    required this.orders,
  });

  @override
  String toString() {
    return 'OrderSummaryByDate{date: $date, syncStatus: $syncStatus, totalOrders: $totalOrders, totalAmount: $totalAmount}';
  }
}
