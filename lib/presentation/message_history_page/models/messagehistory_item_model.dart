import '../../../core/app_export.dart';

/// This class is used in the [messagehistory_item_widget] screen.
class MessagehistoryItemModel {
  MessagehistoryItemModel({
    this.drMarcusHorizon,
    this.drMarcusHorizon1,
    this.iDonTHaveAny,
    this.oneThousandTwentyFour,
    this.widget,
    this.id,
  }) {
    drMarcusHorizon = drMarcusHorizon ?? Rx(ImageConstant.imgClose40x40);
    drMarcusHorizon1 = drMarcusHorizon1 ?? Rx("Dr. Marcus Horizon");
    iDonTHaveAny =
        iDonTHaveAny ?? Rx("I don,t have any fever, but headchace...");
    oneThousandTwentyFour = oneThousandTwentyFour ?? Rx("10.24");
    widget = widget ?? Rx("1");
    id = id ?? Rx("");
  }

  Rx<String>? drMarcusHorizon;

  Rx<String>? drMarcusHorizon1;

  Rx<String>? iDonTHaveAny;

  Rx<String>? oneThousandTwentyFour;

  Rx<String>? widget;

  Rx<String>? id;
}
