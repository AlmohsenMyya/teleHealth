import 'am_item_model.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [doctor_detail_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class DoctorDetailModel {
  Rx<List<AmItemModel>> amItemList =
      Rx(List.generate(9, (index) => AmItemModel()));
}
