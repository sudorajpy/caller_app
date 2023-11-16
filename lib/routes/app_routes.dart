import 'package:caller_app/presentation/signup_form_screen/binding/signup_form_binding.dart';
import 'package:caller_app/presentation/splash_screen/splash_screen.dart';
import 'package:caller_app/presentation/splash_screen/binding/splash_binding.dart';
import 'package:caller_app/presentation/login_screen/login_screen.dart';
import 'package:caller_app/presentation/signup_form_screen/signup_form_screen.dart';

import 'package:caller_app/presentation/login_screen/binding/login_binding.dart';
import 'package:caller_app/presentation/login_form_screen/login_form_screen.dart';
import 'package:caller_app/presentation/login_form_screen/binding/login_form_binding.dart';
import 'package:caller_app/presentation/call_container_screen/call_container_screen.dart';
import 'package:caller_app/presentation/call_container_screen/binding/call_container_binding.dart';
import 'package:caller_app/presentation/contact_profile_screen/contact_profile_screen.dart';
import 'package:caller_app/presentation/contact_profile_screen/binding/contact_profile_binding.dart';
import 'package:caller_app/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:caller_app/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String loginScreen = '/login_screen';

  static const String signupFormScreen = '/signup_form_screen';

  static const String loginFormScreen = '/login_form_screen';

  static const String callPage = '/call_page';

  static const String callContainerScreen = '/call_container_screen';

  static const String contactsPage = '/contacts_page';

  static const String notificationsPage = '/notifications_page';

  static const String contactProfileScreen = '/contact_profile_screen';

  static const String userProfilePage = '/user_profile_page';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: signupFormScreen,
      page: () => SignupFormScreen(),
      bindings: [
        SignupFormBinding(),
      ],
    ),
    GetPage(
      name: loginFormScreen,
      page: () => LoginFormScreen(),
      bindings: [
        LoginFormBinding(),
      ],
    ),
    GetPage(
      name: callContainerScreen,
      page: () => CallContainerScreen(),
      bindings: [
        CallContainerBinding(),
      ],
    ),
    GetPage(
      name: contactProfileScreen,
      page: () => ContactProfileScreen(),
      bindings: [
        ContactProfileBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
