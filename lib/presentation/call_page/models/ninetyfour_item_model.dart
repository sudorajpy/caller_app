import '../../../core/app_export.dart';

/// This class is used in the [ninetyfour_item_widget] screen.
class NinetyfourItemModel {
  NinetyfourItemModel({
    this.groupBy,
    this.id,
  }) {
    groupBy = groupBy ?? Rx("");
    id = id ?? Rx("");
  }

  Rx<String>? groupBy;

  Rx<String>? id;
}
