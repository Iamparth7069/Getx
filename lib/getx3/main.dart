import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/getx3/controllers.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  final control controls = Get.put(control());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  child: Obx(() {
                    return TextFormField(
                      obscureText: controls.bools.value,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                        ),
                        suffixIcon: IconButton(onPressed: () {
                          controls.bools.value = !controls.bools.value;
                        },
                          icon: Icon(controls.bools.value ? Icons.visibility : Icons.visibility_off
                          ),
                        ),
                      ),
                    );
                  })
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
