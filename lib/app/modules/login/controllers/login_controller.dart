import 'package:get/get.dart';
import 'package:oracle/service/hive_sevice.dart';

class LoginController extends GetxController {
  final HiveService hiveService = HiveService();

  void getToken(String token) async {
    hiveService.addToken(token);
  }

  void clearToken() async {
    hiveService.clearToken();
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
