import 'package:caller_app/controller/account_controller.dart';
import 'package:caller_app/presentation/signup_form_screen/models/signup_form_model.dart';

import 'controller/signup_form_controller.dart';
import 'package:caller_app/core/app_export.dart';
import 'package:caller_app/widgets/app_bar/appbar_title_image.dart';
import 'package:caller_app/widgets/app_bar/custom_app_bar.dart';
import 'package:caller_app/widgets/custom_elevated_button.dart';
import 'package:caller_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SignupFormScreen extends GetWidget<SignupFormController> {
  const SignupFormScreen({Key? key}) : super(key: key);

  // var controller = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              // _buildEight(),
              Expanded(
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 30.h, vertical: 17.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("lbl_welcome_back".tr,
                          style: CustomTextStyles.headlineSmallOnPrimary),
                      SizedBox(height: 12.v),
                      Text("msg_lorem_ipsum_is_simply".tr,
                          style: CustomTextStyles.bodySmallOnPrimary),
                      SizedBox(height: 39.v),
                      Text("Name".tr, style: theme.textTheme.titleSmall),
                      SizedBox(height: 10.v),
                      CustomTextFormField(
                          controller: controller.nameController,
                          hintText: "John William".tr),
                      SizedBox(height: 19.v),
                      Text("Phone".tr, style: theme.textTheme.titleSmall),
                      SizedBox(height: 10.v),
                      CustomTextFormField(
                        textInputType: TextInputType.phone,
                          controller: controller.phoneController,
                          hintText: "1234567890".tr),
                      SizedBox(height: 19.v),
                      Text("Email".tr, style: theme.textTheme.titleSmall),
                      SizedBox(height: 10.v),
                      CustomTextFormField(
                          controller: controller.userIDController,
                          hintText: "example@gmail.com".tr),
                      SizedBox(height: 19.v),
                      Text("lbl_password".tr,
                          style: theme.textTheme.titleSmall),
                      SizedBox(height: 10.v),
                      Obx(() => CustomTextFormField(
                          controller: controller.passwordController,
                          textInputAction: TextInputAction.done,
                          suffix: InkWell(
                            onTap: () {
                              controller.isShowPassword.value =
                                  !controller.isShowPassword.value;
                            },
                            child: Container(
                              width: 44.h,
                              decoration: BoxDecoration(
                                // color: Colors.amberAccent,
                                  borderRadius: BorderRadius.circular(5.h)),
                              child: Icon(Icons.remove_red_eye,
                                  color: controller.isShowPassword.value
                                      ? Colors.black
                                      : Colors.green,
                                  size: 24.h)
                              // CustomImageView(
                              //     imagePath: ImageConstant.imgPassword,
                              //     height: 44.v,
                              //     width: 44.h),
                            ),
                          ),
                          suffixConstraints: BoxConstraints(maxHeight: 44.v),
                          obscureText: controller.isShowPassword.value)),
                      SizedBox(height: 20.v),
                      CustomElevatedButton(
                          text: "lbl_login".tr,
                          onPressed: () {
                            onTapLogin();
                          }),
                      Spacer(),
                      SizedBox(height: 16.v),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: 275.h,
                          margin: EdgeInsets.symmetric(horizontal: 12.h),
                          child: Text("msg_praesent_elementum".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.bodySmallErrorContainer),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEight() {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 26.v),
        decoration: AppDecoration.fillPrimaryContainer,
        child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          SizedBox(height: 24.v),
          CustomAppBar(
              height: 24.v,
              centerTitle: true,
              title: AppbarTitleImage(imagePath: ImageConstant.imgLogo))
        ]));
  }

  /// Navigates to the callContainerScreen when the action is triggered.
  /// ----------------------------------------------------------------
  onTapLogin() {
    ProfileController profileController = Get.put(ProfileController());

    if (controller.userIDController.text.isNotEmpty && controller.passwordController.text.isNotEmpty) {
      // profileController.createAccount(email: controller.userIDController.text, password: controller.passwordController.text);
      // .then((value) {
      //   print("value: $value");
      //   // if (value != null) {
      //   //   Get.toNamed(
      //   //     AppRoutes.callContainerScreen,
      //   //   );
      //   // }
      // });
      profileController.signupUser(email: controller.userIDController.text, password: controller.passwordController.text, name: controller.nameController.text, phone: controller.phoneController.text);
    } else {
      
    }
    // Get.toNamed(
    //   AppRoutes.callContainerScreen,
    // );
  }
}
