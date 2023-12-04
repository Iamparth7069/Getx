import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'SecondScreen.dart';

class Screen1 extends StatelessWidget {
  final String name;
  const Screen1({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar' + name),

      ),
      body: Center(
        child: Container(
            child:TextButton(
              onPressed: () {
                Get.to(Seconds(), duration: Duration(
                  seconds: 2,

                ));
                // Navigator.push(context,MaterialPageRoute(builder: (context) => Seconds(),));
              },
              child: Text("Goto Second Screen"),
            )
        ),
      ),
    );
  }
}
