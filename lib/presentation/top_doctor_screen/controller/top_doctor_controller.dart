import '../../../core/app_export.dart';
import '../models/top_doctor_model.dart';

/// A controller class for the TopDoctorScreen.
///
/// This class manages the state of the TopDoctorScreen, including the
/// current topDoctorModelObj
class TopDoctorController extends GetxController {
  Rx<TopDoctorModel> topDoctorModelObj = TopDoctorModel().obs;
}
