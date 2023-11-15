import '../controller/notifications_controller.dart';
import '../models/fiftytwo_item_model.dart';
import 'package:caller_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FiftytwoItemWidget extends StatelessWidget {
  FiftytwoItemWidget(
    this.fiftytwoItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FiftytwoItemModel fiftytwoItemModelObj;

  var controller = Get.find<NotificationsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 17.v,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => Text(
              fiftytwoItemModelObj.crasVitaeExVenenatis!.value,
              style: theme.textTheme.titleSmall,
            ),
          ),
          SizedBox(height: 12.v),
          SizedBox(
            width: 320.h,
            child: Obx(
              () => Text(
                fiftytwoItemModelObj.phasellusEgetPulvinar!.value,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodyMedium,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
