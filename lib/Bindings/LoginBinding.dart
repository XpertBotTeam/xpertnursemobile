import 'package:get/get.dart';
import 'package:xpertnursemobile/Controllers/LoginController.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies () {
    Get.lazyPut(() => LoginController());
  }
}