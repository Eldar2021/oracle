import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oracle/app/modules/login/controllers/phone_auth_controller.dart';

class AuthPhoneView extends GetView<AuthPhoneController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LoginView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          ' working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}