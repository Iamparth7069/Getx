import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx/routes/SecondScreens1.dart';

import '../GetxNavigation/SecondScreen.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Thired Screens"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("First Screen"),
            TextButton(
              onPressed: () {
                Get.toNamed("/second",arguments: [
                  "Path VYas"
                ]
                  );
                // Navigator.push(context,MaterialPageRoute(builder: (context) => Seconds(),));
              },
              child: Text("Goto Second Screen"),
            )
          ],
        ),
      ),
    );
  }
}
