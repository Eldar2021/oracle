import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:oracle/app/data/models/battle_model/battle_model.dart';
import 'package:oracle/app/data/models/user_model/user_model.dart';
import 'package:oracle/app/modules/app_page/controllers/app_page_controller.dart';
import 'package:oracle/app/routes/app_pages.dart';
import 'package:oracle/service/get_dialog_service.dart';
import 'package:oracle/service/snack_bar_service.dart';

class RespondBattleController extends GetxController {
  final AppPageController appController = AppPageController();
  final Rx<TextEditingController> description = TextEditingController().obs;
  final Rx<TextEditingController> nameCommand = TextEditingController().obs;
  final Rx<TextEditingController> searchByNameNick = TextEditingController().obs;
  final Rx<TextEditingController> searchByName = TextEditingController().obs;
  final Rx<TextEditingController> searchByLastName = TextEditingController().obs;
  final Rx<TextEditingController> searchByNick = TextEditingController().obs;
  final RxList<UserModel> users = RxList<UserModel>([]);
  final RxList<UserModel> newUsers = RxList<UserModel>([]);
  final RxList<UserModel> selectUsers = RxList<UserModel>([]);
  final RxInt emptyList = 0.obs;
  final RxInt notEmptyList = 0.obs;
  final RxInt formatBattle = 0.obs;

  late final Battle battle;
  late final UserModel user;

  void getUsers() {
    users.value = users1;
  }

  void onItemChanged(String value) {
    newUsers.value = users
        .where((user) => user.name
            .toLowerCase()
            .contains(searchByNameNick.value.text.toLowerCase()))
        .toList();
  }

  void respond() async {
    if (user.money! < battle.rate!) {
      SnackBarService.nullPhoto("Каражат жетишсиз", "Каражатынызды толтурунуз");
    } else if (notEmptyList.value < formatBattle.value) {
      SnackBarService.nullPhoto("Оюнчулар толук эмес", "Команданы толук толтур");
    } else {
      print(description.value.text);
      print(nameCommand.value.text);
      print(user.money);
      print(selectUsers);
      DialogService.respondSuccess();
      await Future.delayed(Duration(seconds: 1));
      Get.offAllNamed(Routes.HOME);
    }
  }

  void selectAddUsersFunc(UserModel user) {
    selectUsers.add(user);
    notEmptyList.value++;
    emptyList.value--;
    Get.offNamed(Routes.RESPOND_BATTLE);
  }

  void selectRemoveUsersFunc(UserModel user) {
    selectUsers.remove(user);
    notEmptyList.value--;
    emptyList.value++;
  }

  int listItemCount() {
    if (battle.formatBattle == "2х2") {
      emptyList.value = 1;
      return 1;
    } else if (battle.formatBattle == "3х3") {
      emptyList.value = 2;
      return 2;
    } else if (battle.formatBattle == "4x4") {
      emptyList.value = 3;
      return 3;
    } else if (battle.formatBattle == "5x5") {
      emptyList.value = 4;
      return 4;
    } else {
      emptyList.value = 0;
      return 0;
    }
  }

  void proceed()async{
    DialogService.respondSuccess();
    await Future.delayed(Duration(seconds: 1));
    Get.offAllNamed(Routes.HOME);
  }

  @override
  void onInit() {
    user = appController.user.value;
    newUsers.value = users;
    battle = Get.arguments[0];
    formatBattle.value = listItemCount();
    getUsers();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
