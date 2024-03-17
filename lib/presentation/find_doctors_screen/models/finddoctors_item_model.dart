import '../../../core/app_export.dart';

/// This class is used in the [finddoctors_item_widget] screen.
class FinddoctorsItemModel {
  FinddoctorsItemModel({
    this.general,
    this.general1,
    this.id,
  }) {
    general = general ?? Rx(ImageConstant.imgIconDoctor);
    general1 = general1 ?? Rx("General");
    id = id ?? Rx("");
  }

  Rx<String>? general;

  Rx<String>? general1;

  Rx<String>? id;
}
