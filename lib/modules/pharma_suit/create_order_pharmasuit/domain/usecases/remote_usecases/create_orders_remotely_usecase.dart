import 'package:fpdart/fpdart.dart';
import '../../../../../../core/core.dart';
import '../../../../../../core/shared/models/post_models/sync_orders_model.dart';
import '../../../data/models/get_order_response/get_order_response.dart';
import '../../repository/create_orders_repository.dart';

class CreateOrdersRemotelyUsecase
    implements Usecase<List<GetOrderResponse>, List<SyncOrdersModel>> {
  final CreateOrdersRepository createOrdersRepository;

  CreateOrdersRemotelyUsecase({required this.createOrdersRepository});
  @override
  Future<Either<AppException, List<GetOrderResponse>>> call(
    List<SyncOrdersModel> ordersData,
  ) async {
    return await createOrdersRepository.syncOrdersRemotely(
      orderdata: ordersData,
    );
  }
}
