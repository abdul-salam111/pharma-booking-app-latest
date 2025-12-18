import '../../../../../presentations/home/presentation/barrel.dart';

abstract interface class CustomerRemoteDatasource {
  Future<List<GetCustomersModel>> getAllCustomers();
  Future<List<GetSubAreaListModel>> getSubAreaList();
  Future<List<GetAreaListModel>> getAreaList();
  Future<List<GetSalesmanModel>> getAllSalesmans();
}

class CustomerRemoteDatasourceImpl implements CustomerRemoteDatasource {
  final DioHelper dioHelper;
  CustomerRemoteDatasourceImpl({required this.dioHelper});
  @override
  Future<List<GetCustomersModel>> getAllCustomers() async {
    try {
      final response = await dioHelper.getApi(
        url: ApiKeys.getCustomersUrl,
        authToken: await storage.readValues(StorageKeys.token),
        isAuthRequired: true,
      );
      if (response is List) { 
        return response
            .map((item) => GetCustomersModel.fromJson(item))
            .toList();
      } else {
        return [];
      }
    } catch (error) {
      rethrow;
    }
  }

  @override
  Future<List<GetSubAreaListModel>> getSubAreaList() async {
    try {
      final response = await dioHelper.getApi(
        url: ApiKeys.getTownssUrl,
        authToken: await storage.readValues(StorageKeys.token),
        isAuthRequired: true,
      );

      if (response is List) {
        return response
            .map((item) => GetSubAreaListModel.fromJson(item))
            .toList();
      } else {
        return [];
      }
    } catch (error) {
      rethrow;
    }
  }

  @override
  Future<List<GetAreaListModel>> getAreaList() async {
    try {
      final response = await dioHelper.getApi(
        url: ApiKeys.getSectorsUrl,
        authToken: await storage.readValues(StorageKeys.token),
        isAuthRequired: true,
      );

      if (response is List) {
        return response.map((item) => GetAreaListModel.fromJson(item)).toList();
      } else {
        return [];
      }
    } catch (error) {
      rethrow;
    }
  }

  @override
  Future<List<GetSalesmanModel>> getAllSalesmans() async {
    try {
      final response = await dioHelper.postApi(
        url: ApiKeys.getSalesman,
        authToken: await storage.readValues(StorageKeys.token),
        isAuthRequired: true,
      );

      if (response is List) {
        return response.map((item) => GetSalesmanModel.fromJson(item)).toList();
      } else {
        return [];
      }
    } catch (error) {
      rethrow;
    }
  }
}
