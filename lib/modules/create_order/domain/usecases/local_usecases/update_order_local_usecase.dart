import 'package:fpdart/fpdart.dart';
import '../../../../../core/networks/exceptions/app_exceptions.dart';
import '../../../../../core/shared/domain/usecases/usecase.dart';
import '../../../../../core/shared/models/post_models/create_order_for_local.dart';
import '../../repository/create_orders_repository.dart';

class UpdateOrderLocalUsecase implements Usecase<bool, OrderItemsForLocal> {
  final CreateOrdersRepository repository;
  UpdateOrderLocalUsecase({required this.repository});
  @override
  Future<Either<AppException, bool>> call(OrderItemsForLocal params) async {
    return await repository.updateOrderLocal(order: params);
  }
}
