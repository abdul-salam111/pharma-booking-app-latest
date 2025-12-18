import 'package:fpdart/fpdart.dart';
import '../../../../../../../../core/networks/exceptions/app_exceptions.dart';
import '../../../../../../../../core/shared/domain/usecases/usecase.dart';
import '../../../repository/create_orders_repository.dart';

class DeleteOrderLocalUsecase implements Usecase<bool, int> {
  final CreateOrdersRepository createOrdersRepository;
  DeleteOrderLocalUsecase(this.createOrdersRepository);

  @override
  Future<Either<AppException, bool>> call(int orderId) async {
    return await createOrdersRepository.deleteOrderLocal(orderId: orderId);
  }
}
