import 'package:fpdart/fpdart.dart';
import '../../../../presentations/home/presentation/barrel.dart';

abstract interface class OrderSummaryRepository {
  Future<Either<AppException, List<OrderItemsForLocal>>> getAllOrders();
}
