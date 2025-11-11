

import '../../../../../core/constants/api_keys.dart';

import '../../../../../core/networks/exceptions/app_exceptions.dart';
import '../../../../../core/networks/network_manager/dio_helper.dart';
import '../../../../../core/shared/models/post_models/sync_orders_model.dart';
import '../../models/get_order_response/get_order_response.dart';

abstract interface class CreateOrdersRemoteDatasource {
  Future<List<GetOrderResponse>> syncOrdersRemotely({
    required SyncOrdersModel orderdata,
  });
}

class CreateOrdersRemoteDatasourceImpl implements CreateOrdersRemoteDatasource {
  final DioHelper dioHelper;

  CreateOrdersRemoteDatasourceImpl({required this.dioHelper});
  @override
  Future<List<GetOrderResponse>> syncOrdersRemotely({
    required SyncOrdersModel orderdata,
  }) async {
    try {
      final response = await dioHelper.postApi(
        url: ApiKeys.syncorders,
        requestBody: orderdata,
      );
      if (response is List) {
        return response
            .map((item) => GetOrderResponse.fromJson(item))
            .toList();
      } else {
        return [];
      }
    } catch (error) {
      throw AppException(error.toString());
    }
  }
}
