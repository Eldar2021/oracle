import 'package:get/get.dart';
import 'package:oracle/app/data/models/user_model/user_model.dart';
import 'package:oracle/app/routes/app_pages.dart';
import 'package:oracle/service/token_service.dart';

class AppPageController extends GetxController {
  final TokenService tokenService = TokenService();
  final Rx<UserModel> user = userModel2.obs;

  final RxBool token = false.obs;

  void addToken() async {
    token.value = true;
    tokenService.addToken("token");
    print("tokenim ${token.value}");
  }

  void clearToken() async {
    token.value = false;
    tokenService.removeToken();
    print("tokenim ${token.value}");
  }

  @override
  void onInit() async{
    super.onInit();
  }

  Future<bool> yesToken()async{
    try{
      final bool tokenIs = await tokenService.getToken();
      token.value = tokenIs;
      print("tokenim yesToken ${token.value}");
      if(token.value == true){
        Get.offAllNamed(Routes.SCREEN);
      }else if(token.value == false){
        Get.offAllNamed(Routes.LOGIN);
      }
      return token.value;
    }catch(e){
      Get.offAllNamed(Routes.LOGIN);
      return token.value = false;
    }
  }

  @override
  void onReady() async{
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

}
