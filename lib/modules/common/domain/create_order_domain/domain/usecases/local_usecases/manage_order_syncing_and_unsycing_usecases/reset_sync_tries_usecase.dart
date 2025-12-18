// ==================== FILE: reset_sync_tries_usecase.dart ====================

import 'package:fpdart/fpdart.dart';
import '../../../../../../../../core/networks/exceptions/app_exceptions.dart';
import '../../../../../../../../core/shared/domain/usecases/usecase.dart';
import '../../../repository/create_orders_repository.dart';

class ResetSyncTriesParams {
  final int orderId;

  ResetSyncTriesParams({required this.orderId});
}

class ResetSyncTriesUsecase implements Usecase<int, ResetSyncTriesParams> {
  final CreateOrdersRepository createOrdersRepository;

  ResetSyncTriesUsecase({required this.createOrdersRepository});

  @override
  Future<Either<AppException, int>> call(ResetSyncTriesParams params) async {
    return await createOrdersRepository.resetSyncTries(params.orderId);
  }
}