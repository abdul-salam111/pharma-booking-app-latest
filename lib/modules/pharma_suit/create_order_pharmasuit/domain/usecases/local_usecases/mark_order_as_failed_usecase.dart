// ==================== FILE: mark_order_as_failed_usecase.dart ====================

import 'package:fpdart/fpdart.dart';
import '../../../../../../core/networks/exceptions/app_exceptions.dart';
import '../../../../../../core/shared/domain/usecases/usecase.dart';
import '../../repository/create_orders_repository.dart';

class MarkOrderAsFailedParams {
  final int orderId;

  MarkOrderAsFailedParams({required this.orderId});
}

class MarkOrderAsFailedUsecase
    implements Usecase<int, MarkOrderAsFailedParams> {
  final CreateOrdersRepository createOrdersRepository;

  MarkOrderAsFailedUsecase({required this.createOrdersRepository});

  @override
  Future<Either<AppException, int>> call(MarkOrderAsFailedParams params) async {
    return await createOrdersRepository.markOrderAsFailed(params.orderId);
  }
}