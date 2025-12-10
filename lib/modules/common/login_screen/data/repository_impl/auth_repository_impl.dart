import 'package:fpdart/fpdart.dart';
import '../../../../../core/networks/exceptions/app_exceptions.dart';
import '../../domain/auth_repository/auth_repository.dart';
import '../datasource/auth_remote_datasource.dart';
import '../models/login_request_model/login_request_model.dart';
import '../models/login_response_model/login_response_model.dart';

class AuthRepositoryImpl implements AuthAbstractRepository {
  AuthRemoteDataSource authRemoteDataSource;
  AuthRepositoryImpl({required this.authRemoteDataSource});
  @override
  Future<Either<AppException, LoginResponseModel>> loginUser({
    required LoginRequestModel loginUser,
  }) async {
    try {
      final response = await authRemoteDataSource.loginUser(
        loginUser: loginUser,
      );
      return Right(response);
    } catch (error) {
      return Left(AppException(error.toString()));
    }
  }
}
