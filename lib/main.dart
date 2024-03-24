import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xpertnursemobile/Routes/AppPage.dart';
import 'package:xpertnursemobile/Routes/AppRoute.dart';
import 'package:xpertnursemobile/Views/Login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "XpertNurse",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true
      ),
      initialRoute: AppRoute.login,
      getPages: AppPage.pages,
      home: Login(),
    );
  }
}

