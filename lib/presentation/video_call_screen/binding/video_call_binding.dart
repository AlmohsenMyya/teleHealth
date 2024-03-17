import 'package:almohsen_s_telehealth/presentation/video_call_screen/controller/video_call_controller.dart';
import 'package:get/get.dart';

/// A binding class for the VideoCallScreen.
///
/// This class ensures that the VideoCallController is created when the
/// VideoCallScreen is first loaded.
class VideoCallBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VideoCallController());
  }
}
