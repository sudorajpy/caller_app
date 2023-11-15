import '../controller/login_form_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LoginFormScreen.
///
/// This class ensures that the LoginFormController is created when the
/// LoginFormScreen is first loaded.
class LoginFormBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginFormController());
  }
}
