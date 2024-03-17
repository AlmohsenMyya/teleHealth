import '../../../core/app_export.dart';

/// This class is used in the [popularproductlist_item_widget] screen.
class PopularproductlistItemModel {
  PopularproductlistItemModel({
    this.panadol,
    this.panadol1,
    this.pcs,
    this.price,
    this.close,
    this.id,
  }) {
    panadol = panadol ?? Rx(ImageConstant.imgEf58faa9a71e47e);
    panadol1 = panadol1 ?? Rx("Panadol");
    pcs = pcs ?? Rx("20pcs");
    price = price ?? Rx("15.99");
    close = close ?? Rx(ImageConstant.imgCloseWhiteA700);
    id = id ?? Rx("");
  }

  Rx<String>? panadol;

  Rx<String>? panadol1;

  Rx<String>? pcs;

  Rx<String>? price;

  Rx<String>? close;

  Rx<String>? id;
}
