import 'dart:convert';

class User {
  final String? name;
  final String email;
  final String? phone;
  final String? password;


  User({
    this.name,
    required this.email,
    this.phone,
    this.password
});


  Map <String,dynamic> ToMap(){
    return {
      'name':name,
      'email':email,
      'phone':phone,
      'password':password
    };
  }

  String toJson()=> json.encode(ToMap());


}