import 'package:pharma_booking_app/modules/common/data/all_products_data/data/models/get_products_packing/get_packings.dart';
import '../../../../../../../../core/core.dart';
import '../../../../../../../../core/networks/network_manager/dio_helper.dart';
import '../../../models/get_products_model/get_all_products_model.dart';

abstract interface class RemoteProductDatasource {
  Future<List<GetAllProductsModel>> getAllProducts();
  Future<List<GetPackings>> getAllPackings();
}

class RemoteProductDataSourceImpl implements RemoteProductDatasource {
  final DioHelper dioHelper;

  RemoteProductDataSourceImpl({required this.dioHelper});
  @override
  Future<List<GetAllProductsModel>> getAllProducts() async {
    try {
      final response = await dioHelper.getApi(
        url: ApiKeys.getProductsUrl,
        isAuthRequired: true,
        authToken: await storage.readValues(StorageKeys.token),
      );

      if (response is List) {
        return response
            .map((item) => GetAllProductsModel.fromJson(item))
            .toList();
      } else {
        return [];
      }
    } catch (error) {
      rethrow;
    }
  }

  @override
  Future<List<GetPackings>> getAllPackings() async {
    try {
      final response = await dioHelper.getApi(
        url: ApiKeys.getPackingsUrl,
        isAuthRequired: true,
        authToken: await storage.readValues(StorageKeys.token),
      );

      if (response is List) {
        return response.map((item) => GetPackings.fromJson(item)).toList();
      } else {
        return [];
      }
    } catch (error) {
      rethrow;
    }
  }
}
