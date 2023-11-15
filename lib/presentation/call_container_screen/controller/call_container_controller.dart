import 'package:caller_app/core/app_export.dart';
import 'package:caller_app/presentation/call_container_screen/models/call_container_model.dart';

/// A controller class for the CallContainerScreen.
///
/// This class manages the state of the CallContainerScreen, including the
/// current callContainerModelObj
class CallContainerController extends GetxController {
  Rx<CallContainerModel> callContainerModelObj = CallContainerModel().obs;
}
