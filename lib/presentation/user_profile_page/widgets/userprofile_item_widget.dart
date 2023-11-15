import '../controller/user_profile_controller.dart';
import '../models/userprofile_item_model.dart';
import 'package:caller_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  var controller = Get.find<UserProfileController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.h),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => CustomImageView(
                  imagePath: userprofileItemModelObj.userImage!.value,
                  height: 28.adaptSize,
                  width: 28.adaptSize,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 4.h,
                  top: 4.v,
                  bottom: 7.v,
                ),
                child: Obx(
                  () => Text(
                    userprofileItemModelObj.userAge!.value,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 7.v),
          Obx(
            () => Text(
              userprofileItemModelObj.spamCallIdentified!.value,
              style: CustomTextStyles.bodySmallOnSecondaryContainer,
            ),
          ),
          SizedBox(height: 11.v),
        ],
      ),
    );
  }
}
