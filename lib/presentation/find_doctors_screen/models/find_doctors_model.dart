import '../../../core/app_export.dart';
import 'finddoctors_item_model.dart';
import 'doctors_item_model.dart';

/// This class defines the variables used in the [find_doctors_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FindDoctorsModel {
  Rx<List<FinddoctorsItemModel>> finddoctorsItemList = Rx([
    FinddoctorsItemModel(
        general: ImageConstant.imgIconDoctor.obs, general1: "General".obs),
    FinddoctorsItemModel(
        general: ImageConstant.imgIconLungs.obs, general1: "Lungs".obs),
    FinddoctorsItemModel(
        general: ImageConstant.imgIconDentist.obs, general1: "Dentist".obs),
    FinddoctorsItemModel(
        general: ImageConstant.imgIconPsychiatrist.obs,
        general1: "Psychiatrist".obs),
    FinddoctorsItemModel(
        general: ImageConstant.imgSearch.obs, general1: "Covid-19".obs),
    FinddoctorsItemModel(
        general: ImageConstant.imgIconSyringe.obs, general1: "Surgeon".obs),
    FinddoctorsItemModel(
        general: ImageConstant.imgIconCardiologist.obs, general1: "Cardio".obs)
  ]);

  Rx<List<DoctorsItemModel>> doctorsItemList = Rx([
    DoctorsItemModel(
        drMarcus: ImageConstant.imgEllipse8864x64.obs,
        drMarcus1: "Dr. Marcus".obs),
    DoctorsItemModel(
        drMarcus: ImageConstant.imgEllipse881.obs, drMarcus1: "Dr. Maria".obs),
    DoctorsItemModel(
        drMarcus: ImageConstant.imgEllipse882.obs, drMarcus1: "Dr. Stevi".obs),
    DoctorsItemModel(
        drMarcus: ImageConstant.imgRectangle961.obs, drMarcus1: "Dr. Luke".obs)
  ]);
}
