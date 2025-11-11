import 'package:fpdart/fpdart.dart';
import '../../../home/presentation/barrel.dart';
import '../../data/models/login_request_model/login_request_model.dart';
import '../../data/models/login_response_model/login_response_model.dart';
import '../auth_repository/auth_repository.dart';

class LoginUserUsecase
    implements Usecase<LoginResponseModel, LoginRequestModel> {
  final AuthAbstractRepository authAbstractRepository;
  LoginUserUsecase({required this.authAbstractRepository});

  @override
  Future<Either<AppException, LoginResponseModel>> call(
    LoginRequestModel params,
  ) async {
    try {
      return await authAbstractRepository.loginUser(loginUser: params);
    } catch (error) {
      return left(AppException(error.toString()));
    }
  }
}
