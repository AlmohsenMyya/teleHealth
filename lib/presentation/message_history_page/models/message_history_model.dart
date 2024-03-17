import '../../../core/app_export.dart';
import 'messagehistory_item_model.dart';

/// This class defines the variables used in the [message_history_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MessageHistoryModel {
  Rx<List<MessagehistoryItemModel>> messagehistoryItemList = Rx([
    MessagehistoryItemModel(
        drMarcusHorizon: ImageConstant.imgClose40x40.obs,
        drMarcusHorizon1: "Dr. Marcus Horizon".obs,
        iDonTHaveAny: "I don,t have any fever, but headchace...".obs,
        oneThousandTwentyFour: "10.24".obs,
        widget: "1".obs)
  ]);
}
