import '../../../core/app_export.dart';
import 'profilelistsection_item_model.dart';

/// This class defines the variables used in the [profile_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ProfileModel {
  Rx<List<ProfilelistsectionItemModel>> profilelistsectionItemList = Rx([
    ProfilelistsectionItemModel(
        heartrate: ImageConstant.imgTelevision.obs,
        heartRate1: "Heart rate".obs,
        bpm: "215bpm".obs),
    ProfilelistsectionItemModel(
        heartrate: ImageConstant.imgSettingsWhiteA700.obs,
        heartRate1: "Calories".obs,
        bpm: "756cal".obs),
    ProfilelistsectionItemModel(
        heartrate: ImageConstant.imgThumbsUpWhiteA700.obs,
        heartRate1: "Weight".obs,
        bpm: "103lbs".obs)
  ]);
}
