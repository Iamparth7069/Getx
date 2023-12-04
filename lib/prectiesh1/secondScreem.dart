import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/prectiesh1/homeScree.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 200,
            height: 200,
            color: Colors.grey,
          ),
          ElevatedButton(onPressed: () {
            Get.off(HomeScreen());
          }, child: const Text("Redirect First Screen"))
        ],
      ),
    );
  }
}
