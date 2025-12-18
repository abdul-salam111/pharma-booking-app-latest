import '../../../../../../core/core.dart';
import '../../../../../../core/networks/network_manager/dio_helper.dart';
import '../models/login_request_model/login_request_model.dart';
import '../models/login_response_model/login_response_model.dart';

abstract interface class AuthRemoteDataSource {
  Future<LoginResponseModel> loginUser({required LoginRequestModel loginUser});
}

class AuthRemoteDatasourceImpl implements AuthRemoteDataSource {
  final DioHelper dioHelper;
  AuthRemoteDatasourceImpl({required this.dioHelper});

  @override
  Future<LoginResponseModel> loginUser({
    required LoginRequestModel loginUser,
  }) async {
    try {
      final response = await dioHelper.postApi(
        url: ApiKeys.loginUrl,
        requestBody: loginUser,
      );
      return LoginResponseModel.fromJson(response);
    } catch (error) {
      throw AppException(error.toString());
    }
  }
}
