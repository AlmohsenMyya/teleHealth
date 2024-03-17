import '../../../core/app_export.dart';
import 'categories_item_model.dart';
import 'home_item_model.dart';

/// This class defines the variables used in the [home_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel {
  Rx<List<CategoriesItemModel>> categoriesItemList = Rx([
    CategoriesItemModel(
        ambulance: ImageConstant.imgIconAmbulance.obs,
        ambulance1: "Ambulance".obs),
    CategoriesItemModel(
        ambulance: ImageConstant.imgIconDoctor.obs, ambulance1: "Doctor".obs),
    CategoriesItemModel(
        ambulance: ImageConstant.imgIconPharmacy.obs,
        ambulance1: "Pharmacy".obs),
    CategoriesItemModel(
        ambulance: ImageConstant.imgIconHospital.obs,
        ambulance1: "Hospital".obs)
  ]);

  Rx<List<HomeItemModel>> homeItemList = Rx([
    HomeItemModel(
        circleImage: ImageConstant.imgEllipse88.obs,
        fortySeven: "4.7".obs,
        drMarcusHorizon: "Dr. Marcus Horizon".obs,
        chardiologist: "Chardiologist".obs,
        distance: "800m away".obs),
    HomeItemModel(
        circleImage: ImageConstant.imgEllipse89.obs,
        fortySeven: "4.7".obs,
        drMarcusHorizon: "Dr. Maria Elena".obs,
        chardiologist: "Chardiologist".obs,
        distance: "800m away".obs),
    HomeItemModel(
        circleImage: ImageConstant.imgEllipse88.obs,
        fortySeven: "4.7".obs,
        drMarcusHorizon: "Dr. Marcus Horizon".obs,
        chardiologist: "Chardiologist".obs,
        distance: "800m away".obs),
    HomeItemModel(
        circleImage: ImageConstant.imgEllipse89.obs,
        fortySeven: "4.7".obs,
        drMarcusHorizon: "Dr. Maria Elena".obs,
        chardiologist: "Chardiologist".obs,
        distance: "800m away".obs)
  ]);
}
