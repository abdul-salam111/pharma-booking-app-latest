
import '../../../../../../core/core.dart';

import '../../../../../../core/networks/network_manager/dio_helper.dart';
import '../../../../../login_screen/data/models/login_request_model/login_request_model.dart';
import '../../../models/get_companies_model/get_companies_model.dart';

abstract interface class RemoteCompaniesDatasource {
  Future<List<GetCompaniesModel>> getAllCompanies();
}

class RemoteCompaniesDatasourceImpl implements RemoteCompaniesDatasource {
  final DioHelper dioHelper;

  RemoteCompaniesDatasourceImpl({required this.dioHelper});
  @override
  Future<List<GetCompaniesModel>> getAllCompanies() async {
    try {
      final response = await dioHelper.postApi(
        url: ApiKeys.getCompaniesUrl,
        requestBody: LoginRequestModel(
          tenantId: SessionController().getUserDetails.tenantId?.toIntOrNull,
          customerKey: SessionController().getUserDetails.customerKey!
              .toString(),
          mobileNo: await storage.readValues('phone'),
        ),
      );

      if (response is List) {
        return response
            .map((item) => GetCompaniesModel.fromJson(item))
            .toList();
      } else {
        return [];
      }
    } catch (error) {
      rethrow;
    }
  }
}
