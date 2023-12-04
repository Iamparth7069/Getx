import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'getc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      title: 'Maeterial App',
      home: Home()
    );
  }
}
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final Gets gets = Get.put(Gets());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pick To The Image'),
      ),
      body: Obx(() {

        return Center(
          child: InkWell(
            onTap: () {
              gets.getImage();
            },
            child: CircleAvatar(
              radius: 100,
              backgroundColor: Colors.blue,
              child: Stack(
                children: [
                  if (gets.imagePath.isEmpty)
                    Center(
                      child: Icon(
                        Icons.ac_unit,
                        size: 200,
                        color: Colors.white,
                      ),
                    ),
                  if(gets.imagePath.isNotEmpty)
                    Center(
                      child: ClipOval(
                        child: Image.file(
                          File(gets.imagePath.value),
                          fit: BoxFit.cover,
                          width: 200, // Adjust the width as needed
                          height: 200, // Adjust the height as needed
                        ),
                      ),
                    )
                ],
              ),
            ),
          ),
        );
      })
    );
  }
}

