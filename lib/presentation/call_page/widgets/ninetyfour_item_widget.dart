import '../controller/call_controller.dart';
import '../models/ninetyfour_item_model.dart';
import 'package:caller_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NinetyfourItemWidget extends StatelessWidget {
  NinetyfourItemWidget(
    this.ninetyfourItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  NinetyfourItemModel ninetyfourItemModelObj;

  var controller = Get.find<CallController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 8.h),
      padding: EdgeInsets.symmetric(
        horizontal: 21.h,
        vertical: 5.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 44.adaptSize,
            width: 44.adaptSize,
            margin: EdgeInsets.only(
              left: 7.h,
              top: 1.v,
            ),
            padding: EdgeInsets.all(2.h),
            decoration: AppDecoration.fillBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder22,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgImgCircle,
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
              top: 8.v,
              bottom: 6.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_firm_consulting".tr,
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 5.v),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgOutgoingCallIcon,
                      height: 12.adaptSize,
                      width: 12.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 6.h),
                      child: Text(
                        "lbl_today_06_27pm".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgFrame5,
            height: 44.v,
            width: 16.h,
            margin: EdgeInsets.only(top: 1.v),
          ),
        ],
      ),
    );
  }
}
