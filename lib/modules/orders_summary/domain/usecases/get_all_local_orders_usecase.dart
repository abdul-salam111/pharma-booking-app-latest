import 'package:fpdart/fpdart.dart';
import '../../../common/home/presentation/barrel.dart';
import '../repository/orders_summary_repository.dart';

class GetAllLocalOrdersUsecase
    implements Usecase<List<OrderItemsForLocal>, NoParams> {
  final OrderSummaryRepository repository;

  GetAllLocalOrdersUsecase({required this.repository});

  @override
  Future<Either<AppException, List<OrderItemsForLocal>>> call(
    NoParams params,
  ) async {
    return await repository.getAllOrders();
  }
}
