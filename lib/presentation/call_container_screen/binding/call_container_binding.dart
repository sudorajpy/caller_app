import '../controller/call_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CallContainerScreen.
///
/// This class ensures that the CallContainerController is created when the
/// CallContainerScreen is first loaded.
class CallContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CallContainerController());
  }
}
