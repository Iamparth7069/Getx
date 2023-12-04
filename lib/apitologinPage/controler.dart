import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class Test extends GetxController{
  final email = TextEditingController();
  final passeord = TextEditingController();
  RxBool loading = false.obs;
  void checkLogin() async {
    try{
      loading.value = true;
      final responce = await post(Uri.parse("https://reqres.in/api/login"),body: {
        "email" : email.text.toString(),
        "password" : passeord.text.toString()
      });
      var data = jsonDecode(responce.body);
      print(responce.statusCode);
      if(responce.statusCode == 200){
        loading.value = false;
        Get.snackbar("Login Success", "Congratulation",backgroundColor: Colors.blue,colorText: Colors.white);
      }else{
        loading.value = false;
        Get.snackbar("Error","Errors",backgroundColor: Colors.blue,colorText: Colors.white);
      }
    }catch(e){
      loading.value = false;
      print("The Error IS $e");
    }
  }
}