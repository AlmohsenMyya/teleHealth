import 'package:almohsen_s_telehealth/presentation/booking_doctor_screen/controller/booking_doctor_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BookingDoctorScreen.
///
/// This class ensures that the BookingDoctorController is created when the
/// BookingDoctorScreen is first loaded.
class BookingDoctorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BookingDoctorController());
  }
}
