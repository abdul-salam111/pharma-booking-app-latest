import 'package:fpdart/fpdart.dart';
import '../../../common/home/presentation/barrel.dart';
import '../../domain/repository/orders_summary_repository.dart';
import '../datasource/order_summary_local_datasource/order_summary_local_datasource.dart';

class OrderSummaryRepositoryImpl implements OrderSummaryRepository {
  final OrderSummaryLocalDatasource orderSummaryLocalDatasource;

  OrderSummaryRepositoryImpl({required this.orderSummaryLocalDatasource});

  @override
  Future<Either<AppException, List<OrderItemsForLocal>>> getAllOrders() async {
    try {
      return Right(await orderSummaryLocalDatasource.getAllOrders());
    } catch (error) {
      return Left(AppException(error.toString()));
    }
  }
}
