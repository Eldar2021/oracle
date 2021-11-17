import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:oracle/app/data/models/battle_model/battle_model.dart';
import 'package:oracle/constants/api_url_constants.dart';

class PlayController extends GetxController {
  final RxList<Battle> battles = RxList<Battle>([]);

  @override
  void onInit() {
    super.onInit();
    listBattles();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  void listBattles() async {
    battles.value = await getBattles();
  }

  Future<List<Battle>> getBattles() async {
    Dio dio = Dio();
    final response = await dio.get(Url.battleUrl);
    if (response.statusCode == 200) {
      final dynamic result = response.data;
      Iterable list = result;
      print(response);
      return list.map((e) => Battle.fromJson(e)).toList();
    } else {
      throw Exception("your have error");
    }
  }
}
