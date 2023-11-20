import 'package:caller_app/presentation/dialer_screen/dialer_screen.dart';

import '../call_page/widgets/ninetyfour_item_widget.dart';
import 'controller/call_controller.dart';
import 'models/call_model.dart';
import 'models/ninetyfour_item_model.dart';
import 'package:caller_app/core/app_export.dart';
import 'package:caller_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:caller_app/widgets/app_bar/appbar_title_image.dart';
import 'package:caller_app/widgets/app_bar/custom_app_bar.dart';
import 'package:caller_app/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';

class CallPage extends StatelessWidget {
  CallPage({Key? key})
      : super(
          key: key,
        );

  CallController controller = Get.put(CallController(CallModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(),
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnErrorContainer,
          child: Column(
            children: [
              // _buildTwelve(),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _buildNinetyFour(),
                      SizedBox(height: 16.v),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30.h),
                        child: _buildFrameTwentyEight(
                          dynamicsHumanResource: "lbl_house_of_hr".tr,
                          duration: "msg_yesterday_06_27pm".tr,
                        ),
                      ),
                      SizedBox(height: 8.v),
                      Divider(),
                      SizedBox(height: 8.v),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30.h),
                        child: _buildFrameTwentyEight(
                          dynamicsHumanResource:
                              "msg_dynamics_human_resource".tr,
                          duration: "msg_yesterday_06_27pm".tr,
                        ),
                      ),
                      SizedBox(height: 8.v),
                      Divider(),
                      SizedBox(height: 8.v),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30.h),
                        child: _buildFrameTwentyEight(
                          dynamicsHumanResource: "lbl_firm_consulting".tr,
                          duration: "msg_yesterday_06_27pm".tr,
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
        floatingActionButton: InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (builder)=> DialerScreen()));
          },
          child: Container(
              height: 80,
              width: 80,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[200],
                // color: appTheme.primaryColor,
              ),
              // color: Colors.green,
              child: Image.asset(
                'assets/images/dialer.png',
                height: 40,
                width: 40,
              )),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTwelve() {
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
  Widget _buildNinetyFour() {
    return Obx(
      () => GroupedListView<NinetyfourItemModel, String>(
        shrinkWrap: true,
        stickyHeaderBackgroundColor: Colors.transparent,
        elements: controller.callModelObj.value.ninetyfourItemList.value,
        groupBy: (element) => element.groupBy!.value,
        sort: false,
        groupSeparatorBuilder: (String value) {
          return Opacity(
            opacity: 0.8,
            child: Container(
              width: double.maxFinite,
              margin: EdgeInsets.symmetric(vertical: 8.v),
              padding: EdgeInsets.symmetric(
                horizontal: 30.h,
                vertical: 11.v,
              ),
              decoration: AppDecoration.fillGrayA,
              child: Text(
                value,
                style: theme.textTheme.labelMedium!.copyWith(
                  color: appTheme.blueGray400,
                ),
              ),
            ),
          );
        },
        itemBuilder: (context, model) {
          return NinetyfourItemWidget(
            model,
          );
        },
        separator: SizedBox(
          height: 2.v,
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildFrameTwentyEight({
    required String dynamicsHumanResource,
    required String duration,
  }) {
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
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 6.v,
              bottom: 6.v,
            ),
            child: Column(
              children: [
                Text(
                  dynamicsHumanResource,
                  style: theme.textTheme.titleSmall!.copyWith(
                    color: theme.colorScheme.onPrimary.withOpacity(1),
                  ),
                ),
                SizedBox(height: 6.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgOutgoingCallIcon,
                      height: 12.adaptSize,
                      width: 12.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 6.h),
                      child: Text(
                        duration,
                        style: theme.textTheme.bodySmall!.copyWith(
                          color: appTheme.gray700,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
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
