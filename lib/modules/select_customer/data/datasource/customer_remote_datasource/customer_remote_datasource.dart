
import '../../../../home/presentation/barrel.dart';
import '../../../../login_screen/data/models/login_request_model/login_request_model.dart';


abstract interface class CustomerRemoteDatasource {
  Future<List<GetCustomersModel>> getAllCustomers();
  Future<List<GetTownsModel>> getAllTowns();
  Future<List<GetSectorsModel>> getAllSectors();
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
        // requestBody: LoginRequestModel(
        //   tenantId: SessionController().getUserDetails.tenantId?.toIntOrNull,
        //   customerKey: SessionController().getUserDetails.customerKey!
        //       .toString(),
        //   mobileNo: await storage.readValues('phone'),
        // ),
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
  Future<List<GetTownsModel>> getAllTowns() async {
    try {
      final response = await dioHelper.postApi(
        url: ApiKeys.getTownssUrl,
        // requestBody: LoginRequestModel(
        //   tenantId: SessionController().getUserDetails.tenantId?.toIntOrNull,
        //   customerKey: SessionController().getUserDetails.customerKey!
        //       .toString(),
        //   mobileNo: await storage.readValues('phone'),
        // ),
      );

      if (response is List) {
        return response.map((item) => GetTownsModel.fromJson(item)).toList();
      } else {
        return [];
      }
    } catch (error) {
      rethrow;
    }
  }

  @override
  Future<List<GetSectorsModel>> getAllSectors() async {
    try {
      final response = await dioHelper.postApi(
        url: ApiKeys.getSectorsUrl,
        // requestBody: LoginRequestModel(
        //   tenantId: SessionController().getUserDetails.tenantId?.toIntOrNull,
        //   customerKey: SessionController().getUserDetails.customerKey!
        //       .toString(),
        //   mobileNo: await storage.readValues('phone'),
        // ),
      );

      if (response is List) {
        return response.map((item) => GetSectorsModel.fromJson(item)).toList();
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
        // requestBody: LoginRequestModel(
        //   tenantId: SessionController().getUserDetails.tenantId?.toIntOrNull,
        //   customerKey: SessionController().getUserDetails.customerKey!
        //       .toString(),
        //   mobileNo: await storage.readValues('phone'),
        // ),
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
