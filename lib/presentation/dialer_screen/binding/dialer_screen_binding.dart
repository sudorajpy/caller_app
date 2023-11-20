
import 'package:caller_app/presentation/dialer_screen/controller/dialer_screen_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LoginFormScreen.
///
/// This class ensures that the LoginFormController is created when the
/// LoginFormScreen is first loaded.
class DialerScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DialerScreenController());
  }
}
