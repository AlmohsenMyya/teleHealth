import '../../../core/app_export.dart';
import '../models/video_call_model.dart';

/// A controller class for the VideoCallScreen.
///
/// This class manages the state of the VideoCallScreen, including the
/// current videoCallModelObj
class VideoCallController extends GetxController {
  Rx<VideoCallModel> videoCallModelObj = VideoCallModel().obs;
}
