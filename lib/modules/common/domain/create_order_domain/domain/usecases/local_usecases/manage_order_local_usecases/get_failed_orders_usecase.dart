// ==================== FILE: get_failed_orders_usecase.dart ====================

import 'package:fpdart/fpdart.dart';
import '../../../../../../../../core/networks/exceptions/app_exceptions.dart';
import '../../../../../../../../core/shared/domain/usecases/usecase.dart';
import '../../../../../../data/create_order_data/data/models/request_models/create_order_for_local.dart';
import '../../../repository/create_orders_repository.dart';

class GetFailedOrdersUsecase
    implements Usecase<List<OrderItemsForLocal>, NoParams> {
  final CreateOrdersRepository createOrdersRepository;

  GetFailedOrdersUsecase({required this.createOrdersRepository});

  @override
  Future<Either<AppException, List<OrderItemsForLocal>>> call(
    NoParams params,
  ) async {
    return await createOrdersRepository.getFailedOrders();
  }
}
