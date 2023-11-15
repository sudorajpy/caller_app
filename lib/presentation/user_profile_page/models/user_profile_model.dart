import '../../../core/app_export.dart';
import 'userprofile_item_model.dart';

/// This class defines the variables used in the [user_profile_page],
/// and is typically used to hold data that is passed between different parts of the application.
class UserProfileModel {
  Rx<List<UserprofileItemModel>> userprofileItemList = Rx([
    UserprofileItemModel(
        userImage: ImageConstant.imgSpamCallIdentifiedIcon.obs,
        userAge: "37".obs,
        spamCallIdentified: "Spam Call Identified".obs),
    UserprofileItemModel(
        userImage: ImageConstant.imgClock.obs,
        userAge: "18m 7s".obs,
        spamCallIdentified: "Time save from spammers".obs),
    UserprofileItemModel(
        userImage: ImageConstant.imgSearchLightBlue700.obs,
        userAge: "140".obs,
        spamCallIdentified: "Unknow number identified".obs),
    UserprofileItemModel(
        userImage: ImageConstant.imgMessageSpamIcon.obs,
        userAge: "169".obs,
        spamCallIdentified: "Message moved to spam".obs)
  ]);
}
