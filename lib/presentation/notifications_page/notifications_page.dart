import '../notifications_page/widgets/fiftytwo_item_widget.dart';
import 'controller/notifications_controller.dart';
import 'models/fiftytwo_item_model.dart';
import 'models/notifications_model.dart';
import 'package:caller_app/core/app_export.dart';
import 'package:caller_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:caller_app/widgets/app_bar/appbar_title_image.dart';
import 'package:caller_app/widgets/app_bar/custom_app_bar.dart';
import 'package:caller_app/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  NotificationsPage({Key? key})
      : super(
          key: key,
        );

  NotificationsController controller =
      Get.put(NotificationsController(NotificationsModel().obs));

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
              // _buildTen(),
              Column(
                children: [
                  SizedBox(height: 1.v),
                  _buildFiftyTwo(),
                  SizedBox(height: 21.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.h),
                      child: Text(
                        "msg_praesent_ultricies".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                  ),
                  SizedBox(height: 11.v),
                  Container(
                    width: 313.h,
                    margin: EdgeInsets.only(
                      left: 19.h,
                      right: 26.h,
                    ),
                    child: Text(
                      "msg_vivamus_faucibus".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTen() {
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
  Widget _buildFiftyTwo() {
    return Obx(
      () => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 1.v,
          );
        },
        itemCount: controller
            .notificationsModelObj.value.fiftytwoItemList.value.length,
        itemBuilder: (context, index) {
          FiftytwoItemModel model = controller
              .notificationsModelObj.value.fiftytwoItemList.value[index];
          return FiftytwoItemWidget(
            model,
          );
        },
      ),
    );
  }
}
