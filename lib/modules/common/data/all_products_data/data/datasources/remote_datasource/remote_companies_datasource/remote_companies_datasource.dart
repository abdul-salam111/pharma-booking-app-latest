import '../../../../../../../../core/core.dart';
import '../../../../../../../../core/networks/network_manager/dio_helper.dart';
import '../../../models/get_companies_model/companies_model.dart';

abstract interface class RemoteCompaniesDatasource {
  Future<List<CompaniesModel>> getAllCompanies();
}

class RemoteCompaniesDatasourceImpl implements RemoteCompaniesDatasource {
  final DioHelper dioHelper;

  RemoteCompaniesDatasourceImpl({required this.dioHelper});
  @override
  Future<List<CompaniesModel>> getAllCompanies() async {
    try {
      final response = await dioHelper.getApi(
        url: ApiKeys.getCompaniesUrl,
        isAuthRequired: true,
        authToken: await storage.readValues(StorageKeys.token),
      );

      if (response is List) {
        return response.map((item) => CompaniesModel.fromJson(item)).toList();
      } else {
        return [];
      }
    } catch (error) {
      rethrow;
    }
  }
}
