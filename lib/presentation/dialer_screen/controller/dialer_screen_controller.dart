import 'package:caller_app/core/app_export.dart';
import 'package:caller_app/presentation/dialer_screen/model/dialer_screen_model.dart';
import 'package:caller_app/presentation/login_form_screen/models/login_form_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the LoginFormScreen.
///
/// This class manages the state of the LoginFormScreen, including the
/// current loginFormModelObj
class DialerScreenController extends GetxController {
  TextEditingController userIDController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<DialerScreenModel> loginFormModelObj = DialerScreenModel().obs;

  Rx<bool> isShowPassword = true.obs;

  @override
  void onClose() {
    super.onClose();
    userIDController.dispose();
    passwordController.dispose();
  }
}
