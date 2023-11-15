import 'package:caller_app/core/app_export.dart';
import 'package:caller_app/presentation/notifications_page/models/notifications_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the NotificationsPage.
///
/// This class manages the state of the NotificationsPage, including the
/// current notificationsModelObj
class NotificationsController extends GetxController {
  NotificationsController(this.notificationsModelObj);

  TextEditingController searchController = TextEditingController();

  Rx<NotificationsModel> notificationsModelObj;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
