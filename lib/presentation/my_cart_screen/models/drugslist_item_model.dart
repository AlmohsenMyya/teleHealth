import '../../../core/app_export.dart';

/// This class is used in the [drugslist_item_widget] screen.
class DrugslistItemModel {
  DrugslistItemModel({
    this.oBHCombi,
    this.oBHCombi1,
    this.measurement,
    this.one,
    this.price,
    this.id,
  }) {
    oBHCombi = oBHCombi ?? Rx(ImageConstant.imgHealthvitLLys50x50);
    oBHCombi1 = oBHCombi1 ?? Rx("OBH Combi");
    measurement = measurement ?? Rx("75ml");
    one = one ?? Rx("1");
    price = price ?? Rx("9.99");
    id = id ?? Rx("");
  }

  Rx<String>? oBHCombi;

  Rx<String>? oBHCombi1;

  Rx<String>? measurement;

  Rx<String>? one;

  Rx<String>? price;

  Rx<String>? id;
}
