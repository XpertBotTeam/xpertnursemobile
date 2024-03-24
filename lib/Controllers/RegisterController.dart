import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:xpertnursemobile/Core/Dialog.dart';
import 'package:xpertnursemobile/Core/Network/DioClient.dart';

import '../Models/User.dart';

class RegisterController extends GetxController{

  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();


  void register() async
  {
    print("function is called");
    try{
      User user = User(name: name.value.text, email:email.value.text, phone: phone.value.text, password: password.value.text);
      String request_body = user.toJson();
      var post = await DioClient().getInstance().post('/register',data: request_body);
      print("response");
      print(post.data);
      if(post.statusCode==200)
        {
          showSuccessDialog(Get.context!, "Success", "User Registered Successfully", (){

          });
        }

    }catch(exception)
    {
      print(exception);
    }finally{

    }
  }


}