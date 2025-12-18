// ==================== FILE: mark_order_as_not_failed_usecase.dart ====================

import 'package:fpdart/fpdart.dart';
import '../../../../../../../../core/networks/exceptions/app_exceptions.dart';
import '../../../../../../../../core/shared/domain/usecases/usecase.dart';
import '../../../repository/create_orders_repository.dart';

class MarkOrderAsNotFailedParams {
  final int orderId;

  MarkOrderAsNotFailedParams({required this.orderId});
}

class MarkOrderAsNotFailedUsecase
    implements Usecase<int, MarkOrderAsNotFailedParams> {
  final CreateOrdersRepository createOrdersRepository;

  MarkOrderAsNotFailedUsecase({required this.createOrdersRepository});

  @override
  Future<Either<AppException, int>> call(
      MarkOrderAsNotFailedParams params) async {
    return await createOrdersRepository.markOrderAsNotFailed(params.orderId);
  }
}