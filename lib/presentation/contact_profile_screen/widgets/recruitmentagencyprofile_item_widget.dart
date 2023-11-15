import '../controller/contact_profile_controller.dart';
import '../models/recruitmentagencyprofile_item_model.dart';
import 'package:caller_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RecruitmentagencyprofileItemWidget extends StatelessWidget {
  RecruitmentagencyprofileItemWidget(
    this.recruitmentagencyprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  RecruitmentagencyprofileItemModel recruitmentagencyprofileItemModelObj;

  var controller = Get.find<ContactProfileController>();

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
            children: [
              Container(
                height: 44.adaptSize,
                width: 44.adaptSize,
                padding: EdgeInsets.all(2.h),
                decoration: AppDecoration.fillBlueGray.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder22,
                ),
                child: Obx(
                  () => CustomImageView(
                    imagePath: recruitmentagencyprofileItemModelObj
                        .recruitmentAgencyImage!.value,
                    height: 38.adaptSize,
                    width: 38.adaptSize,
                    radius: BorderRadius.circular(
                      19.h,
                    ),
                    alignment: Alignment.center,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 10.h,
                  top: 6.v,
                  bottom: 6.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => Text(
                        recruitmentagencyprofileItemModelObj
                            .recruitmentAgencyName!.value,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    SizedBox(height: 5.v),
                    Obx(
                      () => Text(
                        recruitmentagencyprofileItemModelObj
                            .recruitmentAgencyDate!.value,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 9.v),
          Container(
            width: 272.h,
            margin: EdgeInsets.only(right: 7.h),
            child: Obx(
              () => Text(
                recruitmentagencyprofileItemModelObj
                    .recruitmentAgencyDiscouragemen!.value,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodySmallOnPrimary.copyWith(
                  height: 1.30,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgThumbsUp,
                height: 16.adaptSize,
                width: 16.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 4.h,
                  top: 2.v,
                ),
                child: Obx(
                  () => Text(
                    recruitmentagencyprofileItemModelObj
                        .recruitmentAgencyThumbsUpCount!.value,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgSearch,
                height: 16.adaptSize,
                width: 16.adaptSize,
                margin: EdgeInsets.only(left: 20.h),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 4.h,
                  top: 2.v,
                ),
                child: Obx(
                  () => Text(
                    recruitmentagencyprofileItemModelObj
                        .recruitmentAgencySearchCount!.value,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
