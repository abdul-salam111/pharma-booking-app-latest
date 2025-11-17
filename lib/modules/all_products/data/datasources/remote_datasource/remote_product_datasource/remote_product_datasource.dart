import '../../../../../../core/core.dart';
import '../../../../../../core/networks/network_manager/dio_helper.dart';
import '../../../models/get_products_model/get_all_products_model.dart';

abstract interface class RemoteProductDatasource {
  Future<List<GetAllProductsModel>> getAllProducts();
}

class RemoteProductDataSourceImpl implements RemoteProductDatasource {
  final DioHelper dioHelper;

  RemoteProductDataSourceImpl({required this.dioHelper});
  @override
  Future<List<GetAllProductsModel>> getAllProducts() async {
    try {
      final response = await dioHelper.getApi(url: ApiKeys.getProductsUrl);

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
}
