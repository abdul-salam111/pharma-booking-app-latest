
import '../../../../../../core/core.dart';
import '../../../../../../core/networks/network_manager/dio_helper.dart';
import '../../../../../login_screen/data/models/login_request_model/login_request_model.dart';
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
      final response = await dioHelper.postApi(
        url: ApiKeys.getProductsUrl,
        requestBody: LoginRequestModel(
          tenantId: SessionController().getUserDetails.tenantId?.toIntOrNull,
          customerKey: SessionController().getUserDetails.customerKey!
              .toString(),
          mobileNo: await storage.readValues('phone'),
        ),
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
}
