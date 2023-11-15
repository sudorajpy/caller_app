import 'package:caller_app/core/app_export.dart';
import 'package:caller_app/presentation/call_page/models/call_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the CallPage.
///
/// This class manages the state of the CallPage, including the
/// current callModelObj
class CallController extends GetxController {
  CallController(this.callModelObj);

  TextEditingController searchController = TextEditingController();

  Rx<CallModel> callModelObj;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
