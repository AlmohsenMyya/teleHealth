import '../../../core/app_export.dart';
import 'schedule_item_model.dart';

/// This class defines the variables used in the [schedule_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ScheduleModel {
  Rx<List<ScheduleItemModel>> scheduleItemList = Rx([
    ScheduleItemModel(
        drMarcusHorizon: "Dr. Marcus Horizon".obs,
        chardiologist: "Chardiologist".obs,
        drMarcusHorizon1: ImageConstant.imgClose40x40.obs,
        date: "26/06/2022".obs,
        time: "10:30 AM".obs,
        confirmed: "Confirmed".obs),
    ScheduleItemModel(
        drMarcusHorizon: "Dr. Alysa Hana".obs,
        chardiologist: "Psikeater".obs,
        drMarcusHorizon1: ImageConstant.imgPlay.obs)
  ]);
}
