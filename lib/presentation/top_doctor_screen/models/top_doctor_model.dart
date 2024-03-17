import '../../../core/app_export.dart';
import 'topdoctor_item_model.dart';

/// This class defines the variables used in the [top_doctor_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class TopDoctorModel {
  Rx<List<TopdoctorItemModel>> topdoctorItemList = Rx([
    TopdoctorItemModel(
        drMarcusHorizon: "Dr. Marcus Horizon D".obs,
        chardiologist: "Chardiologist".obs,
        fortySeven: "4.7".obs,
        distance: "800m away".obs),
    TopdoctorItemModel(
        drMarcusHorizon: "Dr. Marcus Horizon D".obs,
        chardiologist: "Chardiologist".obs,
        fortySeven: "4.7".obs,
        distance: "800m away".obs),
    TopdoctorItemModel(
        drMarcusHorizon: "Dr. Marcus Horizon D".obs,
        chardiologist: "Chardiologist".obs,
        fortySeven: "4.7".obs,
        distance: "800m away".obs),
    TopdoctorItemModel(
        drMarcusHorizon: "Dr. Marcus Horizon D".obs,
        chardiologist: "Chardiologist".obs,
        fortySeven: "4.7".obs,
        distance: "800m away".obs),
    TopdoctorItemModel(
        drMarcusHorizon: "Dr. Marcus Horizon D".obs,
        chardiologist: "Chardiologist".obs,
        fortySeven: "4.7".obs,
        distance: "800m away".obs)
  ]);
}
