import '../../../core/app_export.dart';

/// This class is used in the [profilelistsection_item_widget] screen.
class ProfilelistsectionItemModel {
  ProfilelistsectionItemModel({
    this.heartrate,
    this.heartRate1,
    this.bpm,
    this.id,
  }) {
    heartrate = heartrate ?? Rx(ImageConstant.imgTelevision);
    heartRate1 = heartRate1 ?? Rx("Heart rate");
    bpm = bpm ?? Rx("215bpm");
    id = id ?? Rx("");
  }

  Rx<String>? heartrate;

  Rx<String>? heartRate1;

  Rx<String>? bpm;

  Rx<String>? id;
}
