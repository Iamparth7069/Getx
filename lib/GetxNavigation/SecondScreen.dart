import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Seconds extends StatelessWidget {
  const Seconds({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              Get.to((), duration: Duration(
                seconds: 2,

              ));
              // Navigator.push(context,MaterialPageRoute(builder: (context) => Seconds(),));
            },
            child: Text("Goto Second Screen"),
          )
        ],
      ),
    );
  }
}
