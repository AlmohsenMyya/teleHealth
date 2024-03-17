import '../../../core/app_export.dart';

/// This class is used in the [articlelist_item_widget] screen.
class ArticlelistItemModel {
  ArticlelistItemModel({
    this.covidNineteen,
    this.covidNineteen1,
    this.comparingtheAstraZen,
    this.jun,
    this.time,
    this.id,
  }) {
    covidNineteen = covidNineteen ?? Rx(ImageConstant.imgRectangle460);
    covidNineteen1 = covidNineteen1 ?? Rx("Covid-19");
    comparingtheAstraZen = comparingtheAstraZen ??
        Rx("Comparing the AstraZeneca and Sinovac COVID-19 Vaccines");
    jun = jun ?? Rx("Jun 12, 2021");
    time = time ?? Rx("6 min read");
    id = id ?? Rx("");
  }

  Rx<String>? covidNineteen;

  Rx<String>? covidNineteen1;

  Rx<String>? comparingtheAstraZen;

  Rx<String>? jun;

  Rx<String>? time;

  Rx<String>? id;
}
