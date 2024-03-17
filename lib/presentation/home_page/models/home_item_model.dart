import '../../../core/app_export.dart';

/// This class is used in the [home_item_widget] screen.
class HomeItemModel {
  HomeItemModel({
    this.circleImage,
    this.fortySeven,
    this.drMarcusHorizon,
    this.chardiologist,
    this.distance,
    this.id,
  }) {
    circleImage = circleImage ?? Rx(ImageConstant.imgEllipse88);
    fortySeven = fortySeven ?? Rx("4.7");
    drMarcusHorizon = drMarcusHorizon ?? Rx("Dr. Marcus Horizon");
    chardiologist = chardiologist ?? Rx("Chardiologist");
    distance = distance ?? Rx("800m away");
    id = id ?? Rx("");
  }

  Rx<String>? circleImage;

  Rx<String>? fortySeven;

  Rx<String>? drMarcusHorizon;

  Rx<String>? chardiologist;

  Rx<String>? distance;

  Rx<String>? id;
}
