import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/prectiesh1/secondScreem.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar("Vyas", "Parth",colorText: Colors.red);
        },
        child: Icon(Icons.add),
      ),
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.yellow,
            ),
            ElevatedButton(

                onPressed: () {
                  Get.to(SecondScreen());
            },
                child: Text("Goto second Screens"))
          ],
        ),
      ),
    );
  }
}
