import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:oracle/service/get_dialog_service.dart';
import 'package:oracle/service/identification_service.dart';

class IdentificationController extends GetxController {
  Rx<TextEditingController> name = TextEditingController().obs;
  Rx<TextEditingController> numberPassport = TextEditingController().obs;
  Rx<TextEditingController> pin = TextEditingController().obs;
  Rx<TextEditingController> birthday = TextEditingController().obs;
  Rx<TextEditingController> country = TextEditingController().obs;
  Rx<TextEditingController> city = TextEditingController().obs;
  Rx<TextEditingController> address = TextEditingController().obs;

  final ImagePicker _picker = ImagePicker();
  final IdentificationService identificationService = IdentificationService();

  var selectImagePassport;
  var selectImageAddress;
  RxBool isPassport = false.obs;
  RxBool isAddress = false.obs;
  final RxString position = "position".obs;

  Future<void> getPosition() async {
    final String pos = await identificationService.getIdentification();
    if (pos == "yesIden") {
      position.value = "yesIden";
    } else if (pos == "noIden") {
      position.value = "noIden";
    } else {
      position.value = "waitIden";
    }
  }

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

  void noIden()async{
    await identificationService.addIdentification("noIden");
    DialogService.loadingDialog();
  }

  @override
  void onInit() async{
    await getPosition();
    print(position.value);
    if(position.value == "noIden"){
      DialogService.loadingDialog();
    }
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
