import 'package:flutter/material.dart';

class Thired extends StatelessWidget {
  const Thired({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Thired Screens"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Thired Screen")
          ],
        ),
      ),
    );
  }
}
