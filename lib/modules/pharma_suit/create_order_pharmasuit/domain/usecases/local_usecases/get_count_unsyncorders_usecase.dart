import 'package:fpdart/fpdart.dart';
import '../../../../../../core/networks/exceptions/app_exceptions.dart';
import '../../../../../../core/shared/domain/usecases/usecase.dart';
import '../../repository/create_orders_repository.dart';

class GetCountUnsyncordersUsecase implements Usecase<int, NoParams> {
  final CreateOrdersRepository createOrdersRepository;

  GetCountUnsyncordersUsecase({required this.createOrdersRepository});

  @override
  Future<Either<AppException, int>> call(NoParams params) async {
    return await createOrdersRepository.countUnsyncedOrders();
  }
}
