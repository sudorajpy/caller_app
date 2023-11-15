import 'controller/call_container_controller.dart';
import 'package:caller_app/core/app_export.dart';
import 'package:caller_app/presentation/call_page/call_page.dart';
import 'package:caller_app/presentation/contacts_page/contacts_page.dart';
import 'package:caller_app/presentation/notifications_page/notifications_page.dart';
import 'package:caller_app/presentation/user_profile_page/user_profile_page.dart';
import 'package:caller_app/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class CallContainerScreen extends GetWidget<CallContainerController> {
  const CallContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: AppRoutes.callPage,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                    page: () => getCurrentPage(routeSetting.name!),
                    transition: Transition.noTransition)),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
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
