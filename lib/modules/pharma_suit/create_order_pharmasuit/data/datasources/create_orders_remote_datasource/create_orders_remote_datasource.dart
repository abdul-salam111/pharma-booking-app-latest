import '../../../../../../core/core.dart';

import '../../../../../../core/networks/network_manager/dio_helper.dart';
import '../../../../../../core/shared/models/post_models/sync_orders_model.dart';
import '../../models/get_order_response/get_order_response.dart';

abstract interface class CreateOrdersRemoteDatasource {
  Future<GetOrderResponse> syncOrdersRemotely({
    required List<SyncOrdersModel> orderdata,
  });
}

class CreateOrdersRemoteDatasourceImpl implements CreateOrdersRemoteDatasource {
  final DioHelper dioHelper;

  CreateOrdersRemoteDatasourceImpl({required this.dioHelper});
  @override
  Future<GetOrderResponse> syncOrdersRemotely({
    required List<SyncOrdersModel> orderdata,
  }) async {
    try {
      final response = await dioHelper.postApi(
        url: ApiKeys.syncorders,
        requestBody: orderdata,
        isAuthRequired: true,
        authToken: await storage.readValues(StorageKeys.token),
      );

      return GetOrderResponse.fromJson(response);
    } catch (error) {
      rethrow;
    }
  }
}
