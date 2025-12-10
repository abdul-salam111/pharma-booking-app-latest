import 'package:get/get.dart';
import '../../../../../core/local_storage/database/database_helper.dart';
import '../../../../../core/networks/network_manager/dio_helper.dart';
import '../../data/datasource/auth_remote_datasource.dart';
import '../../data/repository_impl/auth_repository_impl.dart';
import '../../domain/auth_repository/auth_repository.dart';
import '../../domain/usecases/login_user_usecase.dart';
import '../controllers/login_screen_controller.dart';

class LoginScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthRemoteDataSource>(
      () => AuthRemoteDatasourceImpl(dioHelper: Get.find<DioHelper>()),
    );
    Get.lazyPut<AuthAbstractRepository>(
      () => AuthRepositoryImpl(
        authRemoteDataSource: Get.find<AuthRemoteDataSource>(),
      ),
    );
    Get.lazyPut<LoginUserUsecase>(
      () => LoginUserUsecase(
        authAbstractRepository: Get.find<AuthAbstractRepository>(),
      ),
    );
    Get.lazyPut<LoginScreenController>(
      () => LoginScreenController(
        loginUserUsecase: Get.find<LoginUserUsecase>(),
        databaseHelper: Get.find<PharmaDatabase>(),
      ),
    );
  }
}
