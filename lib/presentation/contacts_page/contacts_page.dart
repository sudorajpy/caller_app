import 'controller/contacts_controller.dart';
import 'models/contacts_model.dart';
import 'package:caller_app/core/app_export.dart';
import 'package:caller_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:caller_app/widgets/app_bar/appbar_title_image.dart';
import 'package:caller_app/widgets/app_bar/custom_app_bar.dart';
import 'package:caller_app/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class ContactsPage extends StatelessWidget {
  ContactsPage({Key? key})
      : super(
          key: key,
        );

  ContactsController controller =
      Get.put(ContactsController(ContactsModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnErrorContainer,
          child: Column(
            children: [
              // _buildSeven(),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _buildNewContact(),
                      SizedBox(height: 8.v),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30.h),
                        child: _buildFrameNineteen(
                          wireHire: "lbl_firm_consulting".tr,
                        ),
                      ),
                      SizedBox(height: 8.v),
                      Divider(),
                      SizedBox(height: 8.v),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30.h),
                        child: _buildFrameNineteen(
                          wireHire: "lbl_wire_hire".tr,
                        ),
                      ),
                      SizedBox(height: 8.v),
                      Divider(),
                      SizedBox(height: 8.v),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30.h),
                        child: _buildFrameNineteen(
                          wireHire: "lbl_hr_consultants".tr,
                        ),
                      ),
                      SizedBox(height: 8.v),
                      Divider(),
                      SizedBox(height: 8.v),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30.h),
                        child: _buildFrameTwentyEight(
                          dynamicsHumanResource: "msg_manpower_recruitment".tr,
                        ),
                      ),
                      SizedBox(height: 8.v),
                      Divider(),
                      SizedBox(height: 8.v),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30.h),
                        child: _buildFrameNineteen(
                          wireHire: "msg_the_talent_company".tr,
                        ),
                      ),
                      SizedBox(height: 8.v),
                      Divider(),
                      SizedBox(height: 8.v),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30.h),
                        child: _buildFrameNineteen(
                          wireHire: "lbl_house_of_hr".tr,
                        ),
                      ),
                      SizedBox(height: 8.v),
                      Divider(),
                      SizedBox(height: 8.v),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30.h),
                        child: _buildFrameNineteen(
                          wireHire: "msg_dynamics_human_resource".tr,
                        ),
                      ),
                      SizedBox(height: 8.v),
                      Divider(),
                      SizedBox(height: 8.v),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30.h),
                        child: _buildFrameNineteen(
                          wireHire: "lbl_firm_consulting".tr,
                        ),
                      ),
                      SizedBox(height: 16.v),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30.h),
                        child: _buildFrameNineteen(
                          wireHire: "msg_the_talent_company".tr,
                        ),
                      ),
                      SizedBox(height: 8.v),
                      Divider(),
                      SizedBox(height: 8.v),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30.h),
                        child: _buildFrameNineteen(
                          wireHire: "lbl_house_of_hr".tr,
                        ),
                      ),
                      SizedBox(height: 17.v),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30.h),
                        child: _buildFrameTwentyEight(
                          dynamicsHumanResource:
                              "msg_dynamics_human_resource".tr,
                        ),
                      ),
                      SizedBox(height: 8.v),
                      Divider(),
                      SizedBox(height: 8.v),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30.h),
                        child: _buildFrameTwentyEight(
                          dynamicsHumanResource: "lbl_firm_consulting".tr,
                        ),
                      ),
                      SizedBox(height: 8.v),
                      Divider(),
                      Divider(),
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
  Widget _buildSeven() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.v),
      decoration: AppDecoration.fillPrimaryContainer,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 32.v),
          CustomAppBar(
            leadingWidth: 48.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgFrame34,
              margin: EdgeInsets.only(left: 30.h),
            ),
            title: AppbarTitleImage(
              imagePath: ImageConstant.imgLogo,
              margin: EdgeInsets.only(left: 16.h),
            ),
          ),
          SizedBox(height: 20.v),
          // Padding(
          //   padding: EdgeInsets.symmetric(horizontal: 30.h),
          //   child: CustomSearchView(
          //     controller: controller.searchController,
          //     hintText: "lbl_search_here".tr,
          //   ),
          // ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNewContact() {
    return Opacity(
      opacity: 0.8,
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(
          horizontal: 30.h,
          vertical: 16.v,
        ),
        decoration: AppDecoration.fillGrayA,
        child: Row(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgSystemUiconsUserAdd,
              height: 18.adaptSize,
              width: 18.adaptSize,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 9.h,
                bottom: 3.v,
              ),
              child: Text(
                "lbl_add_new_contact".tr,
                style: CustomTextStyles.labelLargeOnSecondaryContainer,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildFrameNineteen({required String wireHire}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 44.adaptSize,
          width: 44.adaptSize,
          padding: EdgeInsets.all(2.h),
          decoration: AppDecoration.fillBlueGray.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder22,
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgImgCircle38x38,
            height: 38.adaptSize,
            width: 38.adaptSize,
            radius: BorderRadius.circular(
              19.h,
            ),
            alignment: Alignment.center,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 10.h,
            top: 14.v,
            bottom: 15.v,
          ),
          child: Text(
            wireHire,
            style: theme.textTheme.titleSmall!.copyWith(
              color: theme.colorScheme.onPrimary.withOpacity(1),
            ),
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgFrame5,
          height: 44.v,
          width: 16.h,
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildFrameTwentyEight({required String dynamicsHumanResource}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 44.adaptSize,
          width: 44.adaptSize,
          padding: EdgeInsets.all(2.h),
          decoration: AppDecoration.fillBlueGray.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder22,
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgImgCircle5,
            height: 38.adaptSize,
            width: 38.adaptSize,
            radius: BorderRadius.circular(
              19.h,
            ),
            alignment: Alignment.center,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 10.h,
            top: 15.v,
            bottom: 15.v,
          ),
          child: Text(
            dynamicsHumanResource,
            style: theme.textTheme.titleSmall!.copyWith(
              color: theme.colorScheme.onPrimary.withOpacity(1),
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgFrame5,
          height: 44.v,
          width: 16.h,
        ),
      ],
    );
  }
}
