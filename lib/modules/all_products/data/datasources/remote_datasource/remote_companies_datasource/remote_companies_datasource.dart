import '../../../../../../core/core.dart';
import '../../../../../../core/networks/network_manager/dio_helper.dart';
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
      final response = await dioHelper.getApi(url: ApiKeys.getCompaniesUrl);

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
