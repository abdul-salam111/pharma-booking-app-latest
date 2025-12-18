import 'package:fpdart/fpdart.dart';

import '../../../../../../../../core/core.dart';

import '../../../../../../../../core/shared/models/post_models/create_order_for_local.dart';
import '../../../repository/create_orders_repository.dart';

class CreateOrderLocalUsecase implements Usecase<int, OrderItemsForLocal> {
  final CreateOrdersRepository repository;
  CreateOrderLocalUsecase({required this.repository});
  @override
  Future<Either<AppException, int>> call(OrderItemsForLocal params) async {
    return await repository.insertOrderLocal(order: params);
  }
}
