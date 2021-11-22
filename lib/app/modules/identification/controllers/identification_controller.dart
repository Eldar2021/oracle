import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class IdentificationController extends GetxController {
  Rx<TextEditingController> name = TextEditingController().obs;
  Rx<TextEditingController> numberPassport = TextEditingController().obs;
  Rx<TextEditingController> pin = TextEditingController().obs;
  Rx<TextEditingController> birthday = TextEditingController().obs;
  Rx<TextEditingController> country = TextEditingController().obs;
  Rx<TextEditingController> city = TextEditingController().obs;
  Rx<TextEditingController> address = TextEditingController().obs;

  var selectImagePassport;
  var selectImageAddress;
  RxBool isPassport = false.obs;
  RxBool isAddress = false.obs;

  final ImagePicker _picker = ImagePicker();

  imgFromGalleryPassportCancel() async {
    isPassport.value = false;
  }

  imgFromGalleryAddressCancel() async {
    isAddress.value = false;
  }

  imgFromGalleryPassport(bool type) async {
    var image = type == true
        ? await _picker.pickImage(source: ImageSource.gallery)
        : await _picker.pickImage(source: ImageSource.camera);
    selectImagePassport = File(image!.path);
    isPassport.value = true;
    Get.back();
  }

  imgFromGalleryAddress(bool type) async {
    var image = type == true
        ? await _picker.pickImage(source: ImageSource.gallery)
        : await _picker.pickImage(source: ImageSource.camera);
    selectImageAddress = File(image!.path);
    isAddress.value = true;
    Get.back();
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
