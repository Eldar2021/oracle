import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/app/modules/home/views/screen_view.dart';
import 'package:oracle/app/modules/login/views/login_view.dart';
import 'package:oracle/service/hive_sevice.dart';
import 'package:oracle/service/token_service.dart';

class AppPageController extends GetxController {
  // final HiveService hiveService = HiveService();
  final TokenService tokenService = TokenService();

  final RxBool token = false.obs;

  void addToken() async {
    token.value = true;
    tokenService.addToken("token");
   // await hiveService.addToken("token");
    print("tokenim ${token.value}");
  }

  void clearToken() async {
    token.value = false;
    tokenService.removeToken();
   // await hiveService.clearToken();
    print("tokenim ${token.value}");
  }

  @override
  void onInit() async{
   // token.value = await hiveService.yesOrNoToken();
    token.value = await tokenService.getToken();
    print("tokenim ${token.value}");
    super.onInit();
  }

  Future<bool> yesToken()async{
    try{
      final bool tokenIs = await tokenService.getToken();
      token.value = tokenIs;
      return token.value;
    }catch(e){
      return token.value = false;
    }
  }

  @override
  void onReady() async{
   // token.value = await hiveService.yesOrNoToken();
    print("tokenim ${token.value}");
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Widget initialRoute() {
    if (token.value == false) {
      return LoginView();
    } else if (token.value == true) {
      return ScreenView();
    } else {
      return ScreenView();
    }
  }
}
