import 'package:fpdart/fpdart.dart';

import '../../../../../core/core.dart';
import '../../../../../core/shared/models/post_models/create_order_for_local.dart';
import '../../../../../core/shared/models/post_models/sync_orders_model.dart';
import '../../data/models/get_order_response/get_order_response.dart';

abstract interface class CreateOrdersRepository {
  // ==================== GET METHODS ====================

  Future<Either<AppException, List<OrderItemsForLocal>>> getUnsyncedOrders();

  Future<Either<AppException, int>> countUnsyncedOrders();

  Future<Either<AppException, int>> getSyncTries(int orderId);

  Future<Either<AppException, bool>> getFailedStatus(int orderId);

  Future<Either<AppException, List<OrderItemsForLocal>>> getFailedOrders();

  // ==================== UPDATE METHODS ====================

  Future<Either<AppException, bool>> updateOrderSyncStatus(
    int orderId,
    bool isSynced,
  );

  Future<Either<AppException, int>> incrementSyncTries(int orderId);

  Future<Either<AppException, int>> markOrderAsFailed(int orderId);

  Future<Either<AppException, int>> markOrderAsNotFailed(int orderId);

  Future<Either<AppException, int>> resetSyncTries(int orderId);

  // ==================== LOCAL ORDERS MANAGEMENT ====================

  Future<Either<AppException, int>> insertOrderLocal({
    required OrderItemsForLocal order,
  });

  Future<Either<AppException, bool>> updateOrderLocal({
    required OrderItemsForLocal order,
  });

  Future<Either<AppException, bool>> deleteOrderLocal({required int orderId});

  // ==================== REMOTE ORDERS MANAGEMENT ====================

  Future<Either<AppException, GetOrderResponse>> syncOrdersRemotely({
    required List<SyncOrdersModel> orderdata,
  });
}
