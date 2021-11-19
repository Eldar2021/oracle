import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:oracle/app/modules/create_battle/controllers/pay_balance_controller.dart';

class PayBalanceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PayBalanceController>(
      () => PayBalanceController(),
    );
  }
}
