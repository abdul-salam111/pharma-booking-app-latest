import '../../../home/presentation/barrel.dart';
import '../../data/models/login_request_model/login_request_model.dart';
import '../../data/models/login_response_model/login_response_model.dart';
import '../../domain/usecases/login_user_usecase.dart';

class LoginScreenController extends GetxController {
  final LoginUserUsecase loginUserUsecase;
  final SoftronixBookingDatabase databaseHelper;

  LoginScreenController({
    required this.loginUserUsecase,
    required this.databaseHelper,
  });
  /* -------------------------------------------------------------------------- */
  /*                            Text-Editing Controllers                        */
  /* -------------------------------------------------------------------------- */

  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  /* -------------------------------------------------------------------------- */
  /*                                Form Key                                    */
  /* -------------------------------------------------------------------------- */

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  /* -------------------------------------------------------------------------- */
  /*                                UI Flags                                    */
  /* -------------------------------------------------------------------------- */

  /// `true` while the login API call is in flight.
  final RxBool isLoading = false.obs;

  /* -------------------------------------------------------------------------- */
  /*                           Public API (Login)                               */
  /* -------------------------------------------------------------------------- */

  Future<void> loginUser() async {
    if (!formKey.currentState!.validate()) return;

    isLoading.value = true;
    final response = await loginUserUsecase.call(
      LoginRequestModel(
        password: passwordController.text.trim(),
        loginId: phoneController.text.trim(),
      ),
    );
    response.fold(
      (error) {
        AppToasts.showErrorToast(Get.context!, error.toString());
        isLoading.value = false;
      },
      (userData) async {
        _persistSessionAndNavigate(userData);
        isLoading.value = false;
      },
    );
  }

  /* -------------------------------------------------------------------------- */
  /*                         Private Helper Methods                             */
  /* -------------------------------------------------------------------------- */

  /// Saves credentials/session and navigates home.
  Future<void> _persistSessionAndNavigate(LoginResponseModel userData) async {
    await Future.wait([
      storage.setValues(StorageKeys.loginId, phoneController.text.trim()),
      storage.setValues(StorageKeys.password, phoneController.text.trim()),

      SessionController().saveUserInStorage(userData),
      SessionController().getUserfromSharedpref(),
    ]);

    Get.offAllNamed(Routes.HOME);
  }

  /* -------------------------------------------------------------------------- */
  /*                              Clean-up                                      */
  /* -------------------------------------------------------------------------- */

  @override
  void dispose() {
    phoneController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
