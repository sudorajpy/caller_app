import 'package:caller_app/controller/account_controller.dart';

import '../user_profile_page/widgets/userprofile_item_widget.dart';
import 'controller/user_profile_controller.dart';
import 'models/user_profile_model.dart';
import 'models/userprofile_item_model.dart';
import 'package:caller_app/core/app_export.dart';
import 'package:caller_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:caller_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:caller_app/widgets/app_bar/custom_app_bar.dart';
import 'package:caller_app/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class UserProfilePage extends StatelessWidget {
  UserProfilePage({Key? key}) : super(key: key);

  UserProfileController controller =
      Get.put(UserProfileController(UserProfileModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        // appBar: _buildAppBar(),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: SizedBox(
              height: 780.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                          decoration: AppDecoration.fillPrimaryContainer,
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            Container(
                                height: 80.adaptSize,
                                width: 80.adaptSize,
                                padding: EdgeInsets.all(4.h),
                                decoration: AppDecoration
                                    .outlineOnErrorContainer
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder40),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgImgCircle7,
                                    height: 71.adaptSize,
                                    width: 71.adaptSize,
                                    radius: BorderRadius.circular(35.h),
                                    alignment: Alignment.center)),
                            SizedBox(height: 10.v),
                            Text("lbl_bruce_wayne".tr,
                                style: CustomTextStyles
                                    .titleSmallOnErrorContainer),
                            SizedBox(height: 3.v),
                            Text("lbl_brucewayne0123".tr,
                                style:
                                    CustomTextStyles.bodySmallOnErrorContainer),
                            SizedBox(height: 30.v),
                            _buildUserProfile()
                          ],),),),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        _buildTwentyNine(),
                        SizedBox(height: 10.v),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 30.h),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgStatus,
                                          height: 20.adaptSize,
                                          width: 20.adaptSize),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 19.h, bottom: 6.v),
                                          child: Text("msg_urgent_call_only".tr,
                                              style: CustomTextStyles
                                                  .bodySmallSecondaryContainer))
                                    ]))),
                        SizedBox(height: 9.v),
                        Divider(),
                        SizedBox(height: 10.v),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 30.h),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgBookmark,
                                          height: 20.adaptSize,
                                          width: 20.adaptSize),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 19.h, bottom: 7.v),
                                          child: Text("lbl_bookmark".tr,
                                              style: CustomTextStyles
                                                  .bodySmallSecondaryContainer))
                                    ]))),
                        SizedBox(height: 9.v),
                        Divider(),
                        SizedBox(height: 10.v),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 30.h),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgInviteFriend,
                                          height: 20.adaptSize,
                                          width: 20.adaptSize),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 19.h, bottom: 7.v),
                                          child: Text("lbl_invite_friends".tr,
                                              style: CustomTextStyles
                                                  .bodySmallSecondaryContainer))
                                    ]))),
                        SizedBox(height: 10.v),
                        _buildThirty(),
                        SizedBox(height: 10.v),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 30.h),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgNumberGray700,
                                          height: 20.adaptSize,
                                          width: 20.adaptSize),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 18.h, bottom: 7.v),
                                          child: Text(
                                              "msg_voxphone_to_phone".tr,
                                              style: CustomTextStyles
                                                  .bodySmallSecondaryContainer))
                                    ]))),
                        SizedBox(height: 9.v),
                        Divider(),
                        SizedBox(height: 10.v),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 30.h),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgNumber,
                                          height: 20.adaptSize,
                                          width: 20.adaptSize),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 18.h, bottom: 7.v),
                                          child: Text("lbl_voxphone_number".tr,
                                              style: CustomTextStyles
                                                  .bodySmallSecondaryContainer))
                                    ]))),
                        SizedBox(height: 9.v),
                        Divider(),
                        SizedBox(height: 10.v),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 30.h),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgSetting,
                                          height: 20.adaptSize,
                                          width: 20.adaptSize),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 19.h, bottom: 7.v),
                                          child: Text("lbl_setting".tr,
                                              style: CustomTextStyles
                                                  .bodySmallSecondaryContainer))
                                    ]))),
                        SizedBox(height: 9.v),
                        Divider(),
                        SizedBox(height: 10.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 30.h),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgSupport,
                                    height: 20.adaptSize,
                                    width: 20.adaptSize),
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: 19.h, bottom: 6.v),
                                  child: Text("lbl_support_help".tr,
                                      style: CustomTextStyles
                                          .bodySmallSecondaryContainer),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 9.v),
                        Divider(),
                         Divider(),
                        SizedBox(height: 10.v),
                        InkWell(
                          onTap: () {
                            
                            ProfileController().signOut();
                          
                          },
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 30.h),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(Icons.logout, color: Colors.grey,),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 19.h, bottom: 6.v),
                                    child: Text("Log Out".tr,
                                        style: CustomTextStyles
                                            .bodySmallSecondaryContainer),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 9.v),
                        Divider()
                      ]))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 89.v,
        leadingWidth: 48.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 30.h, top: 19.v, bottom: 19.v),
            onTap: () {
              onTapArrowLeft();
            }),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgFrame34,
              margin: EdgeInsets.symmetric(horizontal: 30.h, vertical: 19.v))
        ]);
  }

  /// Section Widget
  Widget _buildUserProfile() {
    return Container(
      decoration: AppDecoration.fillOnErrorContainer
          .copyWith(borderRadius: BorderRadiusStyle.roundedBorder30),
      child: Obx(
        () => GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 86.v,
              crossAxisCount: 2,
              mainAxisSpacing: 14.h,
              crossAxisSpacing: 10.h),
          physics: NeverScrollableScrollPhysics(),
          itemCount: controller
              .userProfileModelObj.value.userprofileItemList.value.length,
          itemBuilder: (context, index) {
            UserprofileItemModel model = controller
                .userProfileModelObj.value.userprofileItemList.value[index];
            return UserprofileItemWidget(model);
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTwentyNine() {
    return SizedBox(
      height: 58.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(height: 10.v),
                    Obx(
                      () => Padding(
                        padding: EdgeInsets.only(left: 30.h),
                        child: CustomRadioButton(
                          text: "lbl_active".tr,
                          value: "lbl_active".tr,
                          groupValue: controller.radioGroup.value,
                          padding: EdgeInsets.symmetric(vertical: 1.v),
                          onChange: (value) {
                            controller.radioGroup.value = value;
                          },
                        ),
                      ),
                    ),
                    SizedBox(height: 9.v),
                    Divider()
                  ])),
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              height: 19.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: 18.v,
                      width: double.maxFinite,
                      decoration: BoxDecoration(color: appTheme.blueGray50),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 30.h),
                      child: Text("lbl_personal".tr.toUpperCase(),
                          style: CustomTextStyles
                              .labelMediumCairoOnPrimaryContainer),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildThirty() {
    return SizedBox(
      height: 58.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(height: 10.v),
                Padding(
                  padding: EdgeInsets.only(left: 30.h),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgProfileGray700,
                          height: 20.adaptSize,
                          width: 20.adaptSize),
                      Padding(
                        padding: EdgeInsets.only(left: 18.h, bottom: 7.v),
                        child: Text("msg_voxphone_profile".tr,
                            style:
                                CustomTextStyles.bodySmallSecondaryContainer),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 9.v),
                Divider()
              ],
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              height: 19.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                          height: 18.v,
                          width: double.maxFinite,
                          decoration:
                              BoxDecoration(color: appTheme.blueGray50))),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 30.h),
                      child: Text("lbl_manage".tr.toUpperCase(),
                          style: CustomTextStyles
                              .labelMediumCairoOnPrimaryContainer),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
