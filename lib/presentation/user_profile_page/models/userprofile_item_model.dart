import '../../../core/app_export.dart';

/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {
  UserprofileItemModel({
    this.userImage,
    this.userAge,
    this.spamCallIdentified,
    this.id,
  }) {
    userImage = userImage ?? Rx(ImageConstant.imgSpamCallIdentifiedIcon);
    userAge = userAge ?? Rx("37");
    spamCallIdentified = spamCallIdentified ?? Rx("Spam Call Identified");
    id = id ?? Rx("");
  }

  Rx<String>? userImage;

  Rx<String>? userAge;

  Rx<String>? spamCallIdentified;

  Rx<String>? id;
}
