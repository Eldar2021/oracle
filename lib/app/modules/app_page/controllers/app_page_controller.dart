import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/app/modules/home/views/home_view.dart';
import 'package:oracle/app/modules/login/views/login_view.dart';

class AppPageController extends GetxController {
  RxBool token = false.obs;
  Rx<Widget> home = HomeView().obs;
  Rx<Widget> login = LoginView().obs;

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

  Widget initialRoute() {
    if (token.value == false) {
      return login.value;
    } else if(token.value == true) {
       return home.value;
    }else{
       return home.value;
    }
  }
}
