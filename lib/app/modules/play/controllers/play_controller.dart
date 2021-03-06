import 'package:get/get.dart';
import 'package:oracle/app/data/models/battle_model/battle_model.dart';

class PlayController extends GetxController {
  final battles = RxList<Battle>([]);
  @override
  void onInit() {
    try{
      battles.value = Get.arguments[0];
    }catch(e){
      listBattles();
    }
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  void listBattles() async {
    battles.value = listBattle1;
  }

  // Future<List<Battle>> getBattles() async {
  //   Dio dio = Dio();
  //   final response = await dio.get(Url.battleUrl);
  //   if (response.statusCode == 200) {
  //     final dynamic result = response.data;
  //     Iterable list = result;
  //     print(response);
  //     return list.map((e) => Battle.fromJson(e)).toList();
  //   } else {
  //     throw Exception("your have error");
  //   }
  // }
}
