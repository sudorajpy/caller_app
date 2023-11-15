import 'controller/splash_controller.dart';
import 'package:caller_app/core/app_export.dart';
import 'package:flutter/material.dart';

class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          decoration: BoxDecoration(
              color: theme.colorScheme.onErrorContainer.withOpacity(1),
              image: DecorationImage(
                  image: AssetImage(ImageConstant.imgSplashScreen),
                  fit: BoxFit.cover)),
          child: SizedBox(
            width: double.maxFinite,
            child: CustomImageView(
                imagePath: ImageConstant.imgLogo,
                height: 32.v,
                width: 182.h,
                alignment: Alignment.center),
          ),
        ),
      ),
    );
  }
}
