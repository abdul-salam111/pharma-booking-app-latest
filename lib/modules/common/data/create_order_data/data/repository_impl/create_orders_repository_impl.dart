import 'package:fpdart/fpdart.dart';

import '../../../../../../core/core.dart';
import '../../../../../../core/shared/models/post_models/create_order_for_local.dart';
import '../../../../../../core/shared/models/post_models/sync_orders_model.dart';
import '../../../../domain/create_order_domain/domain/repository/create_orders_repository.dart';
import '../datasources/create_orders_local_datasource/create_orders_local_datasource.dart';
import '../datasources/create_orders_remote_datasource/create_orders_remote_datasource.dart';
import '../models/get_order_response/get_order_response.dart';

class CreateOrdersRepositoryImpl implements CreateOrdersRepository {
  final CreateOrdersLocalDatasource createOrdersLocalDatasource;
  final CreateOrdersRemoteDatasource createOrdersRemoteDatasource;

  CreateOrdersRepositoryImpl({
    required this.createOrdersLocalDatasource,
    required this.createOrdersRemoteDatasource,
  });

  // ==================== GET METHODS ====================

  @override
  Future<Either<AppException, List<OrderItemsForLocal>>>
      getUnsyncedOrders() async {
    try {
      return Right(await createOrdersLocalDatasource.getUnsyncedOrders());
    } catch (error) {
      return Left(AppException(error.toString()));
    }
  }

  @override
  Future<Either<AppException, int>> countUnsyncedOrders() async {
    try {
      return Right(await createOrdersLocalDatasource.countUnsyncedOrders());
    } catch (error) {
      return Left(AppException(error.toString()));
    }
  }

  @override
  Future<Either<AppException, int>> getSyncTries(int orderId) async {
    try {
      return Right(await createOrdersLocalDatasource.getSyncTries(orderId));
    } catch (error) {
      return Left(AppException(error.toString()));
    }
  }

  @override
  Future<Either<AppException, bool>> getFailedStatus(int orderId) async {
    try {
      return Right(await createOrdersLocalDatasource.getFailedStatus(orderId));
    } catch (error) {
      return Left(AppException(error.toString()));
    }
  }

@override
Future<Either<AppException, List<OrderItemsForLocal>>> getFailedOrders() async {
  try {
    return Right(await createOrdersLocalDatasource.getFailedOrders());
  } catch (error) {
    return Left(AppException(error.toString()));
  }
}

  // ==================== UPDATE METHODS ====================

  @override
  Future<Either<AppException, bool>> updateOrderSyncStatus(
    int orderId,
    bool isSynced,
  ) async {
    try {
      return Right(
        await createOrdersLocalDatasource.updateOrderSyncStatus(
          orderId,
          isSynced,
        ),
      );
    } catch (error) {
      return Left(AppException(error.toString()));
    }
  }




  @override
  Future<Either<AppException, int>> incrementSyncTries(int orderId) async {
    try {
      return Right(
        await createOrdersLocalDatasource.incrementSyncTries(orderId),
      );
    } catch (error) {
      return Left(AppException(error.toString()));
    }
  }

  @override
  Future<Either<AppException, int>> markOrderAsFailed(int orderId) async {
    try {
      return Right(
        await createOrdersLocalDatasource.markOrderAsFailed(orderId),
      );
    } catch (error) {
      return Left(AppException(error.toString()));
    }
  }

  @override
  Future<Either<AppException, int>> markOrderAsNotFailed(int orderId) async {
    try {
      return Right(
        await createOrdersLocalDatasource.markOrderAsNotFailed(orderId),
      );
    } catch (error) {
      return Left(AppException(error.toString()));
    }
  }

  @override
  Future<Either<AppException, int>> resetSyncTries(int orderId) async {
    try {
      return Right(
        await createOrdersLocalDatasource.resetSyncTries(orderId),
      );
    } catch (error) {
      return Left(AppException(error.toString()));
    }
  }

  // ==================== LOCAL ORDERS MANAGEMENT ====================

  @override
  Future<Either<AppException, int>> insertOrderLocal({
    required OrderItemsForLocal order,
  }) async {
    try {
      return Right(
        await createOrdersLocalDatasource.insertOrderLocal(order: order),
      );
    } catch (error) {
      return Left(AppException(error.toString()));
    }
  }

  @override
  Future<Either<AppException, bool>> updateOrderLocal({
    required OrderItemsForLocal order,
  }) async {
    try {
      return Right(
        await createOrdersLocalDatasource.updateOrderLocal(order: order),
      );
    } catch (error) {
      return Left(AppException(error.toString()));
    }
  }

  @override
  Future<Either<AppException, bool>> deleteOrderLocal({
    required int orderId,
  }) async {
    try {
      return Right(
        await createOrdersLocalDatasource.deleteOrderLocal(orderId: orderId),
      );
    } catch (error) {
      return Left(AppException(error.toString()));
    }
  }

  // ==================== REMOTE ORDERS MANAGEMENT ====================

  @override
  Future<Either<AppException, GetOrderResponse>> syncOrdersRemotely({
    required List<SyncOrdersModel> orderdata,
  }) async {
    try {
      return Right(
        await createOrdersRemoteDatasource.syncOrdersRemotely(
          orderdata: orderdata,
        ),
      );
    } catch (error) {
      return Left(AppException(error.toString()));
    }
  }
}