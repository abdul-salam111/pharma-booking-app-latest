
// ==================== FILE: get_sync_tries_usecase.dart ====================

import 'package:fpdart/fpdart.dart';
import '../../../../../../core/networks/exceptions/app_exceptions.dart';
import '../../../../../../core/shared/domain/usecases/usecase.dart';
import '../../repository/create_orders_repository.dart';

class GetSyncTriesParams {
  final int orderId;

  GetSyncTriesParams({required this.orderId});
}

class GetSyncTriesUsecase implements Usecase<int, GetSyncTriesParams> {
  final CreateOrdersRepository createOrdersRepository;

  GetSyncTriesUsecase({required this.createOrdersRepository});

  @override
  Future<Either<AppException, int>> call(GetSyncTriesParams params) async {
    return await createOrdersRepository.getSyncTries(params.orderId);
  }
}