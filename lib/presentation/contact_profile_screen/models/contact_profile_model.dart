import '../../../core/app_export.dart';
import 'recruitmentagencyprofile_item_model.dart';

/// This class defines the variables used in the [contact_profile_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ContactProfileModel {
  Rx<List<RecruitmentagencyprofileItemModel>> recruitmentagencyprofileItemList =
      Rx([
    RecruitmentagencyprofileItemModel(
        recruitmentAgencyImage: ImageConstant.imgImgCircle2.obs,
        recruitmentAgencyName: "Recruitment Agency".obs,
        recruitmentAgencyDate: "16 Aug, 2023".obs,
        recruitmentAgencyDiscouragemen:
            "I strongly discourage and condemn the use of fake calls or any deceptive practices."
                .obs,
        recruitmentAgencyThumbsUpCount: "245".obs,
        recruitmentAgencySearchCount: "21".obs),
    RecruitmentagencyprofileItemModel(
        recruitmentAgencyImage: ImageConstant.imgImgCircle38x38.obs,
        recruitmentAgencyName: "Wire Hire".obs,
        recruitmentAgencyDate: "16 Aug, 2023".obs,
        recruitmentAgencyDiscouragemen:
            "I strongly discourage and condemn the use of fake calls or any deceptive practices."
                .obs,
        recruitmentAgencyThumbsUpCount: "245".obs,
        recruitmentAgencySearchCount: "21".obs),
    RecruitmentagencyprofileItemModel(
        recruitmentAgencyImage: ImageConstant.imgImgCircle3.obs,
        recruitmentAgencyName: "The Talent Company".obs,
        recruitmentAgencyDate: "16 Aug, 2023".obs,
        recruitmentAgencyDiscouragemen:
            "I strongly discourage and condemn the use of fake calls or any deceptive practices."
                .obs,
        recruitmentAgencyThumbsUpCount: "245".obs,
        recruitmentAgencySearchCount: "21".obs)
  ]);
}
