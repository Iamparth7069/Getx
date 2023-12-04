import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/StateWigits2/getxsliderController.dart';
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    print("Not a Rebuild");

    final controllers  cont= Get.put(controllers());
    return GetMaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(()
              {
               return Container(
                  width: 200,
                  height: 200,
                  color: Colors.blue.withOpacity(cont.oper.value),
                );
              }),

             Obx(() {
               return  Slider(value: cont.oper.value, onChanged: (value) {
                  cont.increment(value);

               },);
             })
            ],
          ),
        )
      ),
    );
  }
}
