import 'controller/login_controller.dart';
import 'package:caller_app/core/app_export.dart';
import 'package:caller_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends GetWidget<LoginController> {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    color: theme.colorScheme.onErrorContainer.withOpacity(1),
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgSplashScreen),
                        fit: BoxFit.cover)),
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(horizontal: 30.h),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgLogo,
                              height: 32.v,
                              width: 182.h),
                          SizedBox(height: 16.v),
                          Container(
                              width: 269.h,
                              margin: EdgeInsets.only(left: 16.h, right: 14.h),
                              child: Text("msg_free_nationwide".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.headlineSmall)),
                          SizedBox(height: 36.v),
                          CustomElevatedButton(
                              text: "lbl_login".tr,
                              buttonStyle: CustomButtonStyles.fillPrimary,
                              onPressed: () {
                                onTapLogin();
                              })
                        ])))));
  }

  /// Navigates to the loginFormScreen when the action is triggered.
  onTapLogin() {
    Get.toNamed(
      AppRoutes.loginFormScreen,
    );
  }
}
