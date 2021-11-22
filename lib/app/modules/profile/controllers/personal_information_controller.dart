import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:oracle/generated/assets.dart';

class PersonalInfoController extends GetxController {

  Rx<TextEditingController> name = TextEditingController(text: "Азим").obs;
  Rx<TextEditingController> lastName = TextEditingController(text: "Дженалиев").obs;
  Rx<TextEditingController> nick = TextEditingController(text: "appass1nato").obs;
  Rx<TextEditingController> email = TextEditingController(text: "azimdzhenaliev@gmail.com").obs;
  Rx<TextEditingController> phoneNumber = TextEditingController(text: "+996 555 123 456").obs;
  Rx<TextEditingController> whatsApp = TextEditingController(text: "+996555123456").obs;
  Rx<TextEditingController> telegram = TextEditingController(text: "").obs;

  final RxString photoUrl = Assets.userPhote.obs;
  final RxInt count = 0.obs;
  var selectImage;

  final ImagePicker _picker = ImagePicker();


  imgFromGallery(bool type) async {
    var image = type == true
        ? await _picker.pickImage(source: ImageSource.gallery)
        : await _picker.pickImage(source: ImageSource.camera);
    selectImage =  File(image!.path);
    photoUrl.value = '';
    count.value++;
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