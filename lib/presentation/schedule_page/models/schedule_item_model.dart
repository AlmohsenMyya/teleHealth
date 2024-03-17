import '../../../core/app_export.dart';

/// This class is used in the [schedule_item_widget] screen.
class ScheduleItemModel {
  ScheduleItemModel({
    this.drMarcusHorizon,
    this.chardiologist,
    this.drMarcusHorizon1,
    this.date,
    this.time,
    this.confirmed,
    this.id,
  }) {
    drMarcusHorizon = drMarcusHorizon ?? Rx("Dr. Marcus Horizon");
    chardiologist = chardiologist ?? Rx("Chardiologist");
    drMarcusHorizon1 = drMarcusHorizon1 ?? Rx(ImageConstant.imgClose40x40);
    date = date ?? Rx("26/06/2022");
    time = time ?? Rx("10:30 AM");
    confirmed = confirmed ?? Rx("Confirmed");
    id = id ?? Rx("");
  }

  Rx<String>? drMarcusHorizon;

  Rx<String>? chardiologist;

  Rx<String>? drMarcusHorizon1;

  Rx<String>? date;

  Rx<String>? time;

  Rx<String>? confirmed;

  Rx<String>? id;
}
