import '../../../core/app_export.dart';

/// This class is used in the [am_item_widget] screen.
class AmItemModel {
  Rx<String>? am = Rx("09:00 AM");

  Rx<bool>? isSelected = Rx(false);
}
