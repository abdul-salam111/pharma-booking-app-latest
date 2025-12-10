import 'package:fpdart/fpdart.dart';
import '../../../common/home/presentation/barrel.dart';

abstract interface class OrderSummaryRepository {
  Future<Either<AppException, List<OrderItemsForLocal>>> getAllOrders();
}
