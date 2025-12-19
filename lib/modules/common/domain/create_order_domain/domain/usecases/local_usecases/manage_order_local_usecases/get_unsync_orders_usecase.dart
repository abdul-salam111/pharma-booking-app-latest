import 'package:fpdart/fpdart.dart';

import '../../../../../../../../core/networks/exceptions/app_exceptions.dart';
import '../../../../../../../../core/shared/domain/usecases/usecase.dart';

import '../../../../../../data/create_order_data/data/models/request_models/create_order_for_local.dart';
import '../../../repository/create_orders_repository.dart';

class GetUnsyncOrdersUsecase
    implements Usecase<List<OrderItemsForLocal>, NoParams> {
  final CreateOrdersRepository createOrdersRepository;

  GetUnsyncOrdersUsecase({required this.createOrdersRepository});
  @override
  Future<Either<AppException, List<OrderItemsForLocal>>> call(
    NoParams params,
  ) async {
    return await createOrdersRepository.getUnsyncedOrders();
  }
}
