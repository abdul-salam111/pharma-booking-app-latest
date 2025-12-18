// ==================== FILE: get_failed_status_usecase.dart ====================

import 'package:fpdart/fpdart.dart';
import '../../../../../../core/networks/exceptions/app_exceptions.dart';
import '../../../../../../core/shared/domain/usecases/usecase.dart';
import '../../repository/create_orders_repository.dart';

class GetFailedStatusParams {
  final int orderId;

  GetFailedStatusParams({required this.orderId});
}

class GetFailedStatusUsecase implements Usecase<bool, GetFailedStatusParams> {
  final CreateOrdersRepository createOrdersRepository;

  GetFailedStatusUsecase({required this.createOrdersRepository});

  @override
  Future<Either<AppException, bool>> call(GetFailedStatusParams params) async {
    return await createOrdersRepository.getFailedStatus(params.orderId);
  }
}