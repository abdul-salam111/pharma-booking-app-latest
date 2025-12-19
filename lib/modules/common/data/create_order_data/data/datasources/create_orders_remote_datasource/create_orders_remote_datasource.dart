import '../../../../../../../core/core.dart';

import '../../../../../../../core/networks/network_manager/dio_helper.dart';
import '../../models/request_models/sync_orders_remote_model/sync_orders_model.dart';
import '../../models/response_models/get_order_response/get_order_response.dart';

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
