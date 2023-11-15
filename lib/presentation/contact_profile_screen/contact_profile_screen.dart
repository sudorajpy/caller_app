import '../contact_profile_screen/widgets/recruitmentagencyprofile_item_widget.dart';
import 'controller/contact_profile_controller.dart';
import 'models/recruitmentagencyprofile_item_model.dart';
import 'package:caller_app/core/app_export.dart';
import 'package:caller_app/presentation/call_page/call_page.dart';
import 'package:caller_app/presentation/contacts_page/contacts_page.dart';
import 'package:caller_app/presentation/notifications_page/notifications_page.dart';
import 'package:caller_app/presentation/user_profile_page/user_profile_page.dart';
import 'package:caller_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:caller_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:caller_app/widgets/app_bar/custom_app_bar.dart';
import 'package:caller_app/widgets/custom_bottom_bar.dart';
import 'package:caller_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ContactProfileScreen extends GetWidget<ContactProfileController> {
  const ContactProfileScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Container(
              decoration: AppDecoration.fillPrimaryContainer1,
              child: Column(
                children: [
                  Container(
                    height: 80.adaptSize,
                    width: 80.adaptSize,
                    padding: EdgeInsets.all(4.h),
                    decoration: AppDecoration.outlineOnPrimary.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder40,
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgImgCircle71x71,
                      height: 71.adaptSize,
                      width: 71.adaptSize,
                      radius: BorderRadius.circular(
                        35.h,
                      ),
                      alignment: Alignment.center,
                    ),
                  ),
                  SizedBox(height: 9.v),
                  Text(
                    "lbl_hr_consultants".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                  SizedBox(height: 20.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomElevatedButton(
                        height: 36.v,
                        width: 120.h,
                        text: "lbl_call".tr,
                        leftIcon: Container(
                          margin: EdgeInsets.only(right: 6.h),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgProfile,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                          ),
                        ),
                        buttonStyle: CustomButtonStyles.fillLightGreen,
                        buttonTextStyle:
                            CustomTextStyles.bodyMediumOnErrorContainer,
                      ),
                      CustomElevatedButton(
                        height: 36.v,
                        width: 120.h,
                        text: "lbl_block".tr,
                        margin: EdgeInsets.only(left: 10.h),
                        leftIcon: Container(
                          margin: EdgeInsets.only(right: 6.h),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgBlockicon,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                          ),
                        ),
                        buttonStyle: CustomButtonStyles.fillRed,
                        buttonTextStyle:
                            CustomTextStyles.bodyMediumOnErrorContainer,
                      ),
                    ],
                  ),
                  SizedBox(height: 30.v),
                  Container(
                    padding: EdgeInsets.all(30.h),
                    decoration: AppDecoration.fillOnErrorContainer.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder30,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildFrameFortySix(),
                        SizedBox(height: 10.v),
                        _buildRecruitmentAgencyProfile(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 89.v,
      leadingWidth: 48.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgBackIcon,
        margin: EdgeInsets.only(
          left: 30.h,
          top: 19.v,
          bottom: 19.v,
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgFrame34Onprimary,
          margin: EdgeInsets.symmetric(
            horizontal: 30.h,
            vertical: 19.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFrameFortySix() {
    return Padding(
      padding: EdgeInsets.only(right: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomElevatedButton(
            height: 28.v,
            width: 99.h,
            text: "lbl_add_comment".tr,
            buttonTextStyle: CustomTextStyles.bodySmallOnErrorContainer_1,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 6.v,
              bottom: 9.v,
            ),
            child: Text(
              "lbl_comments_45".tr,
              style: theme.textTheme.labelLarge,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRecruitmentAgencyProfile() {
    return Obx(
      () => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 10.v,
          );
        },
        itemCount: controller.contactProfileModelObj.value
            .recruitmentagencyprofileItemList.value.length,
        itemBuilder: (context, index) {
          RecruitmentagencyprofileItemModel model = controller
              .contactProfileModelObj
              .value
              .recruitmentagencyprofileItemList
              .value[index];
          return RecruitmentagencyprofileItemWidget(
            model,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type), id: 1);
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Call:
        return AppRoutes.callPage;
      case BottomBarEnum.Contact:
        return AppRoutes.contactsPage;
      case BottomBarEnum.Notification:
        return AppRoutes.notificationsPage;
      case BottomBarEnum.Profileonerrorcontainer:
        return AppRoutes.userProfilePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.callPage:
        return CallPage();
      case AppRoutes.contactsPage:
        return ContactsPage();
      case AppRoutes.notificationsPage:
        return NotificationsPage();
      case AppRoutes.userProfilePage:
        return UserProfilePage();
      default:
        return DefaultWidget();
    }
  }
}
