import 'package:caller_app/core/app_export.dart';
import 'package:caller_app/presentation/contact_profile_screen/models/contact_profile_model.dart';

/// A controller class for the ContactProfileScreen.
///
/// This class manages the state of the ContactProfileScreen, including the
/// current contactProfileModelObj
class ContactProfileController extends GetxController {
  Rx<ContactProfileModel> contactProfileModelObj = ContactProfileModel().obs;
}
