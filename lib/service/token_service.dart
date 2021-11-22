import 'package:get_storage/get_storage.dart';

class TokenService {
  final box = GetStorage();

  Future<bool> getToken() async {
    try {
      var token = box.read('login');
      if (token.isNotEmpty) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }
  }

  Future<void> addToken(String token) async {
    try {
      box.write('login', token);
    } catch (e) {
      print("token jazuuda $e");
    }
  }

  Future<void> removeToken() async {
    try {
      box.remove('login');
    } catch (e) {
      print("token removedo $e");
    }
  }
}
