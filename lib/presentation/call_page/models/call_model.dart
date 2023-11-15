import 'ninetyfour_item_model.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [call_page],
/// and is typically used to hold data that is passed between different parts of the application.
class CallModel {
  Rx<List<NinetyfourItemModel>> ninetyfourItemList = Rx([
    NinetyfourItemModel(groupBy: "Today".obs),
    NinetyfourItemModel(groupBy: "Today".obs),
    NinetyfourItemModel(groupBy: "Today".obs),
    NinetyfourItemModel(groupBy: "Today".obs),
    NinetyfourItemModel(groupBy: "Yesterday".obs),
    NinetyfourItemModel(groupBy: "Yesterday".obs),
    NinetyfourItemModel(groupBy: "Yesterday".obs),
    NinetyfourItemModel(groupBy: "Yesterday".obs),
    NinetyfourItemModel(groupBy: "Older".obs)
  ]);
}
