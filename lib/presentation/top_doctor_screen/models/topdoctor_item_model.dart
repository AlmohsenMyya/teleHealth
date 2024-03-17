import '../../../core/app_export.dart';

/// This class is used in the [topdoctor_item_widget] screen.
class TopdoctorItemModel {
  TopdoctorItemModel({
    this.drMarcusHorizon,
    this.chardiologist,
    this.fortySeven,
    this.distance,
    this.id,
  }) {
    drMarcusHorizon = drMarcusHorizon ?? Rx("Dr. Marcus Horizon D");
    chardiologist = chardiologist ?? Rx("Chardiologist");
    fortySeven = fortySeven ?? Rx("4.7");
    distance = distance ?? Rx("800m away");
    id = id ?? Rx("");
  }

  Rx<String>? drMarcusHorizon;

  Rx<String>? chardiologist;

  Rx<String>? fortySeven;

  Rx<String>? distance;

  Rx<String>? id;
}
