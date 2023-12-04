import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getx/routes/SecondScreens1.dart';
import 'package:getx/routes/ThiredScreen.dart';

import 'HomeScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Material App',
      theme: ThemeData(
        primarySwatch: Colors.blue,

      ),
      home: const Home(),
      getPages: [
        GetPage(name: "/", page: () => Home(),),
        GetPage(name: "/second", page: () => Second(),),
        GetPage(name: "/thired", page: () => Thired(),),
      ],
    );
  }
}
