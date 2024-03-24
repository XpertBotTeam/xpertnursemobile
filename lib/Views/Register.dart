import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xpertnursemobile/Controllers/RegisterController.dart';

class Register extends GetView<RegisterController>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
            top:10,
            left: 10,
            right: 10
        ),
        child: Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "XpertNurse Registeration",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.bold
                        ),
                      )
                    ]

                ),
                SizedBox(height: 10),
                Text("Name"),
                SizedBox(height: 10),
                TextField(
                  controller: controller.name,
                ),
                SizedBox(height: 10),
                Text("Phone"),
                SizedBox(height: 10),
                TextField(
                  controller: controller.phone,
                ),
                Text("Email"),
                SizedBox(height: 10),
                TextField(
                  controller: controller.email,
                ),
                SizedBox(height: 10,),
                Text("Password"),
                SizedBox(height: 10),
                TextField(
                  controller: controller.password,
                  obscureText: true,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                        onPressed: (){
                          print("pressed");
                          controller.register();
                        } , child: Text("Register")
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}