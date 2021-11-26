import 'package:get_storage/get_storage.dart';

class IdentificationService {
  final box = GetStorage();

  Future<String> getIdentification() async {
    try {
      var token = box.read('iden');
      if (token == "iden") {
        return "yesIden";
      } else if (token == "noIden") {
        return "noIden";
      } else {
        return "waitIden";
      }
    } catch (e) {
      return "waitIden";
    }
  }

  Future<void> addIdentification(String token) async {
    try {
      box.write('iden', token);
    } catch (e) {
      print("iden jazuuda $e");
    }
  }

  Future<void> removeIdentification() async {
    try {
      box.remove('iden');
    } catch (e) {
      print("iden removedo $e");
    }
  }
}
