import 'dart:async';

import '../../modules/common/presentations/home/presentation/barrel.dart';

class SplashServices {
  void isLoggedIn() {
    Future.delayed(Duration(seconds: 2), () {
      checkLoginStatus();
    });
  }

  Future<void> checkLoginStatus() async {
    try {
      await SessionController().getUserfromSharedpref();

      if (SessionController().islogin == true) {
        Get.offAllNamed(Routes.HOME);
      } else {
        Get.offAllNamed(Routes.LOGIN_SCREEN);
      }
    } catch (e) {
      debugPrint('Error in checkLoginStatus: $e');
    }
  }
}
