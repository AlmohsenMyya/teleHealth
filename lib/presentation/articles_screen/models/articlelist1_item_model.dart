import '../../../core/app_export.dart';

/// This class is used in the [articlelist1_item_widget] screen.
class Articlelist1ItemModel {
  Articlelist1ItemModel({
    this.image,
    this.theHealthiest,
    this.jun,
    this.time,
    this.image1,
    this.id,
  }) {
    image = image ?? Rx(ImageConstant.imgUnsplash86rvjm9zowy);
    theHealthiest = theHealthiest ??
        Rx("The 25 Healthiest Fruits You Can Eat, According to a Nutritionist");
    jun = jun ?? Rx("Jun 10, 2021 ");
    time = time ?? Rx("5min read");
    image1 = image1 ?? Rx(ImageConstant.imgBookmark12x10);
    id = id ?? Rx("");
  }

  Rx<String>? image;

  Rx<String>? theHealthiest;

  Rx<String>? jun;

  Rx<String>? time;

  Rx<String>? image1;

  Rx<String>? id;
}
