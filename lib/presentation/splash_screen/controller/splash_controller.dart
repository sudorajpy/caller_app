import 'package:caller_app/core/app_export.dart';
import 'package:caller_app/presentation/splash_screen/models/splash_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

/// A controller class for the SplashScreen.
///
/// This class manages the state of the SplashScreen, including the
/// current splashModelObj
class SplashController extends GetxController {
  Rx<SplashModel> splashModelObj = SplashModel().obs;

  @override
  void onReady() {
    Future.delayed(const Duration(milliseconds: 3000), () {


      if (FirebaseAuth.instance.currentUser != null) {
        Get.toNamed(
        AppRoutes.callContainerScreen,
      );
      } else {
        Get.offNamed(
        AppRoutes.loginFormScreen,
      );
      }


      
    });
  }
}
