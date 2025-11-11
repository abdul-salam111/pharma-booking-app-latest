import 'package:fpdart/fpdart.dart';
import '../../../../../core/networks/exceptions/app_exceptions.dart';
import '../../../../../core/shared/domain/usecases/usecase.dart';
import '../../repository/create_orders_repository.dart';

class UpdateOrdersSyncStatusUsecase
    implements Usecase<bool, Map<String, dynamic>> {
  final CreateOrdersRepository createOrdersRepository;
  UpdateOrdersSyncStatusUsecase({required this.createOrdersRepository});
  @override
  Future<Either<AppException, bool>> call(Map<String, dynamic> params) async {
    return await createOrdersRepository.updateOrderSyncStatus(
      params['orderId'],
      params['isSynced'],
    );
  }
}
