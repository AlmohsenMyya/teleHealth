import 'package:almohsen_s_telehealth/presentation/drugs_detail_screen/controller/drugs_detail_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DrugsDetailScreen.
///
/// This class ensures that the DrugsDetailController is created when the
/// DrugsDetailScreen is first loaded.
class DrugsDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DrugsDetailController());
  }
}
