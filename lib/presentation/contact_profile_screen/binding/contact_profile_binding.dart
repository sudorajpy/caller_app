import '../controller/contact_profile_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ContactProfileScreen.
///
/// This class ensures that the ContactProfileController is created when the
/// ContactProfileScreen is first loaded.
class ContactProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ContactProfileController());
  }
}
