import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controler.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Material App',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Test testing = Get.put(Test());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: testing.email,
                decoration: InputDecoration(
                  hintText: "Enter The Email",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: testing.passeord,
                decoration: InputDecoration(
                  hintText: "Enter The Password",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Obx((){
                return InkWell(
                  onTap: () {
                    testing.checkLogin();
                  },
                  child: testing.loading.value ? CircularProgressIndicator() : Container(
                    height: 50,
                    color: Colors.grey,
                    child: Center(
                      child: Text("Loagin"),
                    ),
                  ),
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}
