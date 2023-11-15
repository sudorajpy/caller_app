import '../../../core/app_export.dart';

/// This class is used in the [fiftytwo_item_widget] screen.
class FiftytwoItemModel {
  FiftytwoItemModel({
    this.crasVitaeExVenenatis,
    this.phasellusEgetPulvinar,
    this.id,
  }) {
    crasVitaeExVenenatis =
        crasVitaeExVenenatis ?? Rx("Cras vitae ex venenatis. ");
    phasellusEgetPulvinar = phasellusEgetPulvinar ??
        Rx("Phasellus eget pulvinar tortor. Curabitur nec ornare velit. Maecenas hendrerit, justo vitae suscipit rutrum, sapien lacus posuere nibh, ut posuere justo urna non ex. Nullam auctor nisi velit, ut interdum augue semper nec.");
    id = id ?? Rx("");
  }

  Rx<String>? crasVitaeExVenenatis;

  Rx<String>? phasellusEgetPulvinar;

  Rx<String>? id;
}
