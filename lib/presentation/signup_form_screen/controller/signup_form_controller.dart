import 'package:caller_app/core/app_export.dart';
import 'package:flutter/material.dart';

import '../models/signup_form_model.dart';

/// A controller class for the LoginFormScreen.
///
/// This class manages the state of the LoginFormScreen, including the
/// current loginFormModelObj
class SignupFormController extends GetxController {
  TextEditingController userIDController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<SignupFormModel> signupFormModelObj = SignupFormModel().obs;

  Rx<bool> isShowPassword = true.obs;

  @override
  void onClose() {
    super.onClose();
    userIDController.dispose();
    passwordController.dispose();
    nameController.dispose();
    phoneController.dispose();
  }
}
