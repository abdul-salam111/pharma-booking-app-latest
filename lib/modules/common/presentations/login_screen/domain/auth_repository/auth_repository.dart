import 'package:fpdart/fpdart.dart';
import '../../../../../../core/networks/exceptions/app_exceptions.dart';
import '../../data/models/login_request_model/login_request_model.dart';
import '../../data/models/login_response_model/login_response_model.dart';

abstract interface class AuthAbstractRepository {
  Future<Either<AppException, LoginResponseModel>> loginUser({
    required LoginRequestModel loginUser,
  });
}
