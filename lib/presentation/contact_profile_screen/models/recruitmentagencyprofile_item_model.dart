import '../../../core/app_export.dart';

/// This class is used in the [recruitmentagencyprofile_item_widget] screen.
class RecruitmentagencyprofileItemModel {
  RecruitmentagencyprofileItemModel({
    this.recruitmentAgencyImage,
    this.recruitmentAgencyName,
    this.recruitmentAgencyDate,
    this.recruitmentAgencyDiscouragemen,
    this.recruitmentAgencyThumbsUpCount,
    this.recruitmentAgencySearchCount,
    this.id,
  }) {
    recruitmentAgencyImage =
        recruitmentAgencyImage ?? Rx(ImageConstant.imgImgCircle2);
    recruitmentAgencyName = recruitmentAgencyName ?? Rx("Recruitment Agency");
    recruitmentAgencyDate = recruitmentAgencyDate ?? Rx("16 Aug, 2023");
    recruitmentAgencyDiscouragemen = recruitmentAgencyDiscouragemen ??
        Rx("I strongly discourage and condemn the use of fake calls or any deceptive practices.");
    recruitmentAgencyThumbsUpCount =
        recruitmentAgencyThumbsUpCount ?? Rx("245");
    recruitmentAgencySearchCount = recruitmentAgencySearchCount ?? Rx("21");
    id = id ?? Rx("");
  }

  Rx<String>? recruitmentAgencyImage;

  Rx<String>? recruitmentAgencyName;

  Rx<String>? recruitmentAgencyDate;

  Rx<String>? recruitmentAgencyDiscouragemen;

  Rx<String>? recruitmentAgencyThumbsUpCount;

  Rx<String>? recruitmentAgencySearchCount;

  Rx<String>? id;
}
