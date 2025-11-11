
import '../../../home/presentation/barrel.dart';
import '../../data/models/login_request_model/login_request_model.dart';
import '../../data/models/login_response_model/login_response_model.dart';
import '../../domain/usecases/login_user_usecase.dart';


class LoginScreenController extends GetxController {
  final LoginUserUsecase loginUserUsecase;
  final PharmaDatabase databaseHelper;

  LoginScreenController({required this.loginUserUsecase, required this.databaseHelper});
  /* -------------------------------------------------------------------------- */
  /*                            Text-Editing Controllers                        */
  /* -------------------------------------------------------------------------- */

  final TextEditingController keyController = TextEditingController();
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

  /// Attempts to log the user in.
  ///
  /// If the **salesman ID changes**, a confirmation dialog is shown before
  /// wiping previous local data.
  /// **No dialog is shown when the user logs in for the very first time.**
  Future<void> loginUser() async {
    if (!formKey.currentState!.validate()) return;

    isLoading.value = true;

    // 1. Authenticate
    final response = await loginUserUsecase.call(
      LoginRequestModel(
        password: passwordController.text.trim(),
        customerKey: keyController.text.trim(),
        mobileNo: phoneController.text.trim(),
      ),
    );
    response.fold(
      (error) {
        AppToasts.showErrorToast(Get.context!, error.toString());
        isLoading.value = false;
      },
      (userData) async {
        // 2. Check for salesman change
        final oldSalesmanId = SessionController().getUserDetails.salesmanId;
        final newSalesmanId = userData.salesmanId;

        final isFirstLogin = oldSalesmanId == null;
        final isSameSalesman = oldSalesmanId == newSalesmanId;

        if (isFirstLogin || isSameSalesman) {
          // First login OR same salesman → proceed without confirmation
          await _persistSessionAndNavigate(userData);
        } else {
          // Different salesman → ask to wash-out
          final confirmed = await showSalesmanConfirmDialog(Get.context!);
          if (confirmed == true) {
            await _persistSessionAndNavigate(userData, washOut: true);
          } else {
            Get.offAllNamed(Routes.LOGIN_SCREEN);
          }
        }
        isLoading.value = false;
      },
    );
  }

  /* -------------------------------------------------------------------------- */
  /*                         Private Helper Methods                             */
  /* -------------------------------------------------------------------------- */

  /// Saves credentials/session and navigates home.
  ///
  /// When [washOut] is `true`, previous orders are deleted.
  Future<void> _persistSessionAndNavigate(
    LoginResponseModel userData, {
    bool washOut = false,
  }) async {
    await Future.wait([
      storage.setValues('phone', phoneController.text.trim()),
      SessionController().saveUserInStorage(userData),
      SessionController().getUserfromSharedpref(),
    ]);

    if (washOut) {
      await databaseHelper.deleteAllOrders();
    }

    Get.offAllNamed(Routes.HOME);
  }

  /* -------------------------------------------------------------------------- */
  /*                              Clean-up                                      */
  /* -------------------------------------------------------------------------- */

  @override
  void dispose() {
    keyController.dispose();
    phoneController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}

/* -------------------------------------------------------------------------- */
/*                         Confirmation Dialog Widget                           */
/* -------------------------------------------------------------------------- */

/// Displays an AlertDialog asking the user to confirm a **salesman change** and
/// the subsequent wash-out of previous data.
///
/// Returns `true` if the user taps **Confirm**, otherwise `false`.
Future<bool?> showSalesmanConfirmDialog(BuildContext context) {
  return showDialog<bool>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext ctx) {
      return AlertDialog(
        backgroundColor: AppColors.appLightThemeBackground,
        title: const Text('Please Confirm'),
        content: const Text(
          'Click Continue if you want to wash out previous salesman data.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(false),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.of(ctx).pop(true),
            child: const Text('Continue'),
          ),
        ],
      );
    },
  );
}
