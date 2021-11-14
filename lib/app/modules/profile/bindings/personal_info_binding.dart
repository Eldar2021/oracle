import 'package:get/get.dart';
import '../controllers/personal_information_controller.dart';

class PersonalInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PersonalInfoController>(
      () => PersonalInfoController(),
    );
  }
}
