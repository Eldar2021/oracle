import 'package:get/get.dart';

import '../controllers/filter_plays_view_controller.dart';

class FilterPlaysViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FilterPlaysViewController>(
      () => FilterPlaysViewController(),
    );
  }
}
