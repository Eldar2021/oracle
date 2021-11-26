import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:oracle/app/data/models/battle_model/battle_model.dart';
import 'package:oracle/app/data/models/user_model/user_model.dart';
import 'package:oracle/app/modules/app_page/controllers/app_page_controller.dart';
import 'package:oracle/app/routes/app_pages.dart';
import 'package:oracle/service/get_dialog_service.dart';
import 'package:oracle/service/snack_bar_service.dart';

class CreateBattleController extends GetxController {
  final AppPageController appController = AppPageController();

  // search editor
  final Rx<TextEditingController> searchByNameNick =
      TextEditingController().obs;
  final Rx<TextEditingController> searchByName = TextEditingController().obs;
  final Rx<TextEditingController> searchByLastName =
      TextEditingController().obs;
  final Rx<TextEditingController> searchByNick = TextEditingController().obs;

  // battle data
  final Rx<TextEditingController> title = TextEditingController().obs;
  final Rx<TextEditingController> description = TextEditingController().obs;
  final Rx<TextEditingController> rate = TextEditingController().obs;
  final Rx<TextEditingController> nameCommand = TextEditingController().obs;
  final Rx<TextEditingController> dateTime = TextEditingController(
          text: "${DateFormat('yyyy-MM-dd   kk:mm').format(DateTime.now())}")
      .obs;

  // format battle
  final Rx<TextEditingController> formatBattle =
      TextEditingController(text: '1x1').obs;

  // late data
  late final bool isUpdate;
  late final UserModel user;
  late final UserModel capitan;
  late final Battle? battle;

  // user model lists
  final RxList<UserModel> selectUsers = RxList<UserModel>([]);
  final RxList<UserModel> newUsers = RxList<UserModel>([]);
  final RxList<UserModel> users = RxList<UserModel>([]);

  final RxInt countList = 0.obs;
  final RxInt command = 0.obs;
  final RxInt notEmptyList = 0.obs;
  final RxBool squadName = false.obs;

  void changeFormat(String format) {
    if (format == "1x1") {
      squadName.value = false;
      countList.value = 0;
    } else if (format == "2x2") {
      squadName.value = true;
      countList.value = 1;
    } else if (format == "3x3") {
      squadName.value = true;
      countList.value = 2;
    } else if (format == "4x4") {
      squadName.value = true;
      countList.value = 3;
    } else if (format == "5x5") {
      squadName.value = true;
      countList.value = 4;
    } else {
      squadName.value = false;
      countList.value = 0;
    }
  }

  void clear() {
    countList.value = 0;
    notEmptyList.value = 0;
    selectUsers.clear();
  }

  void selectAddUsersFunc(UserModel user) {
    selectUsers.add(user);
    notEmptyList.value++;
    countList.value--;
    Get.offNamed(Routes.BATTLE_FORMAT);
  }

  void selectRemoveUsersFunc(UserModel user) {
    selectUsers.remove(user);
    notEmptyList.value--;
    countList.value++;
  }

  void onItemChanged(String value) {
    newUsers.value = users
        .where((user) => user.name
            .toLowerCase()
            .contains(searchByNameNick.value.text.toLowerCase()))
        .toList();
  }

  void proceed() async {
    DialogService.respondSuccess();
    await Future.delayed(Duration(seconds: 1));
    Get.offAllNamed(Routes.HOME);
  }

  void getUsers() {
    users.value = users1;
  }

  void preview() async {
    if (notEmptyList.value < countList.value) {
      SnackBarService.nullPhoto(
          "Оюнчулар толук эмес", "Команданы толук толтур");
    } else if (formatBattle.value.text == "1x1") {
      print(title.value.text);
      print(description.value.text);
      print(rate.value.text);
      print(dateTime.value.text);
      print(formatBattle.value.text);
      print(capitan.name);
      for (var i in selectUsers) {
        print(i.name);
      }
      DialogService.respondSuccess();
      await Future.delayed(Duration(seconds: 1));
      Get.back();
      Get.toNamed(Routes.PUBLISH_GAME);
    } else if (nameCommand.value.text.isEmpty) {
      SnackBarService.nullPhoto("Команданын аты жок", "Командага ат бериниз");
    } else {
      print(title.value.text);
      print(description.value.text);
      print(rate.value.text);
      print(dateTime.value.text);
      print(formatBattle.value.text);
      print(capitan.name);
      for (var i in selectUsers) {
        print(i.name);
      }
      DialogService.respondSuccess();
      await Future.delayed(Duration(seconds: 1));
      Get.back();
      Get.toNamed(Routes.PUBLISH_GAME);
    }
  }

  void publish() async {
    if (user.money! < double.parse(rate.value.text)) {
      SnackBarService.nullPhoto("Каражат жетишсиз", "Каражатынызды толтурунуз");
    } else {
      DialogService.respondSuccess();
      await Future.delayed(Duration(seconds: 1));
      Get.back();
      DialogService.createBattleSuccess();
    }
  }

  @override
  void onInit() {
    isUpdate = Get.arguments[0];
    print(isUpdate);
    if (isUpdate == true) {
      try {
        battle = Get.arguments[1];
        title.value.text = battle!.title;
        description.value.text = battle!.description?? "";
        rate.value.text = battle!.rate.toString();
        dateTime.value.text = battle!.startDate;
      } catch (e) {
        print(e);
        battle == null;
      }
    } else {}
    user = appController.user.value;
    capitan = user;
    newUsers.value = users;
    getUsers();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  final List<Map<String, dynamic>> items = [
    {
      'value': '1x1',
      'label': '1x1',
    },
    {
      'value': '2x2',
      'label': '2x2',
    },
    {
      'value': '3x3',
      'label': '3x3',
    },
    {
      'value': '4x4',
      'label': '4x4',
    },
    {
      'value': '5x5',
      'label': '5x5',
    },
  ];

  void plus() {
    command.value++;
  }
}
