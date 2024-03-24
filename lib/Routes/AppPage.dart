import 'package:get/get.dart';
import 'package:xpertnursemobile/Bindings/LoginBinding.dart';
import 'package:xpertnursemobile/Bindings/RegisterBinding.dart';
import 'package:xpertnursemobile/Routes/AppRoute.dart';
import 'package:xpertnursemobile/Views/Login.dart';
import 'package:xpertnursemobile/Views/Register.dart';

class AppPage {
  static final List<GetPage> pages = [
    GetPage(name: AppRoute.login, page: ()=>Login(),binding: LoginBinding()),
    GetPage(name: AppRoute.register, page: ()=>Register(),binding: RegisterBinding()),

  ];
}