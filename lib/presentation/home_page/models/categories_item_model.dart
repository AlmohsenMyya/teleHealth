import '../../../core/app_export.dart';

/// This class is used in the [categories_item_widget] screen.
class CategoriesItemModel {
  CategoriesItemModel({
    this.ambulance,
    this.ambulance1,
    this.id,
  }) {
    ambulance = ambulance ?? Rx(ImageConstant.imgIconAmbulance);
    ambulance1 = ambulance1 ?? Rx("Ambulance");
    id = id ?? Rx("");
  }

  Rx<String>? ambulance;

  Rx<String>? ambulance1;

  Rx<String>? id;
}
