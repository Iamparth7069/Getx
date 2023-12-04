import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/GetxNavigation/SecondScreen.dart';

import '../prectiesh1/secondScreem.dart';
import 'Screen1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Material App',
      home: Screen1(name: "Parth",)
    );
  }
}
