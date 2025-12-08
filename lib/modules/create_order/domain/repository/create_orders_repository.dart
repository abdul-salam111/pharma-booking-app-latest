import 'package:fpdart/fpdart.dart';

import '../../../../core/core.dart';

import '../../../../core/shared/models/post_models/create_order_for_local.dart';
import '../../../../core/shared/models/post_models/sync_orders_model.dart';
import '../../data/models/get_order_response/get_order_response.dart';

abstract interface class CreateOrdersRepository {
  Future<Either<AppException, List<OrderItemsForLocal>>> getUnsyncedOrders();
  Future<Either<AppException, int>> countUnsyncedOrders();
  Future<Either<AppException, bool>> updateOrderSyncStatus(
    int orderId,
    bool isSynced,
  );

  //local orders management
  Future<Either<AppException, int>> insertOrderLocal(
      {required OrderItemsForLocal order});
  Future<Either<AppException, bool>> updateOrderLocal(
      {required OrderItemsForLocal order});
  Future<Either<AppException, bool>> deleteOrderLocal({required int orderId});

  //remote orders management
  Future<Either<AppException, List<GetOrderResponse>>> syncOrdersRemotely({
    required List<SyncOrdersModel> orderdata,
  });
}
