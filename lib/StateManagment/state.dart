import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/StateManagment/counterController.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final CounterController counterController = Get.put(CounterController());

  int count = 1;
  @override
  Widget build(BuildContext context) {
    print("Call This is ");
    return GetMaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child:Obx((){
                  return Text('${counterController.i.toString()}');
                }),
              ),
              ElevatedButton(onPressed: () {
                counterController.increment();
              }, child: Text("Increment"))
            ],
          ),
        ),
      ),
    );
  }
}
