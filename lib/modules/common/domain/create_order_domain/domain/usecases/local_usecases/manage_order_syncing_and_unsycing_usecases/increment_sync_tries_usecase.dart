// ==================== FILE: increment_sync_tries_usecase.dart ====================

import 'package:fpdart/fpdart.dart';
import '../../../../../../../../core/networks/exceptions/app_exceptions.dart';
import '../../../../../../../../core/shared/domain/usecases/usecase.dart';
import '../../../repository/create_orders_repository.dart';

class IncrementSyncTriesParams {
  final int orderId;

  IncrementSyncTriesParams({required this.orderId});
}

class IncrementSyncTriesUsecase
    implements Usecase<int, IncrementSyncTriesParams> {
  final CreateOrdersRepository createOrdersRepository;

  IncrementSyncTriesUsecase({required this.createOrdersRepository});

  @override
  Future<Either<AppException, int>> call(
      IncrementSyncTriesParams params) async {
    return await createOrdersRepository.incrementSyncTries(params.orderId);
  }
}