import 'package:get/get.dart';

class SnackBarService{
  static void noTokenSnackBar(){
    Get.snackbar("Не авторизованный", "авторизация кыл бир тууган");
  }
  static void noEqualPasswords(){
    Get.snackbar("Password", "сыр создор дал келбейт");
  }
  static void nullPhoto(String tittle, String body){
    Get.snackbar("$tittle", "$body");
  }
}