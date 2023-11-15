import '../../../core/app_export.dart';
import 'fiftytwo_item_model.dart';

/// This class defines the variables used in the [notifications_page],
/// and is typically used to hold data that is passed between different parts of the application.
class NotificationsModel {
  Rx<List<FiftytwoItemModel>> fiftytwoItemList = Rx([
    FiftytwoItemModel(
        crasVitaeExVenenatis: "Cras vitae ex venenatis. ".obs,
        phasellusEgetPulvinar:
            "Phasellus eget pulvinar tortor. Curabitur nec ornare velit. Maecenas hendrerit, justo vitae suscipit rutrum, sapien lacus posuere nibh, ut posuere justo urna non ex. Nullam auctor nisi velit, ut interdum augue semper nec."
                .obs),
    FiftytwoItemModel(
        crasVitaeExVenenatis: "Morbi eget enim facilisis.".obs,
        phasellusEgetPulvinar:
            "Etiam sit amet dignissim metus. Nam aliquam non massa eget varius. In quis posuere lectus. Pellentesque augue elit, faucibus sed diam dapibus,"
                .obs),
    FiftytwoItemModel(
        crasVitaeExVenenatis: "Maecenas eu orci a lacus interdum auctor.".obs,
        phasellusEgetPulvinar:
            "Sed facilisis, est a efficitur scelerisque, quam purus feugiat orci, et facilisis nunc lectus sit amet est. Cras sem tortor, bibendum id porta at, ornare fringilla lorem."
                .obs),
    FiftytwoItemModel(
        crasVitaeExVenenatis:
            "Nullam ultricies orci vitae luctus elementum.".obs,
        phasellusEgetPulvinar:
            "Integer faucibus neque nec sagittis vestibulum. Aenean luctus pretium justo, non porta lacus maximus ac."
                .obs),
    FiftytwoItemModel(
        crasVitaeExVenenatis:
            "Sed dignissim nunc et mi molestie eleifend.\r".obs,
        phasellusEgetPulvinar:
            "Suspendisse sed nunc at mauris tempus imperdiet nec eget felis. Pellentesque vel tortor sem. Duis congue ex at est gravida cursus."
                .obs)
  ]);
}
