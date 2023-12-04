import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/lagvage/lan.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      fallbackLocale: Locale('en','US'),
      translations: Lanunguage(),
      locale:  Locale('en','US'),
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ListTile(
              title: Text("message".tr),
              subtitle: Text("name".tr),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                OutlinedButton(onPressed: () {
                  Get.updateLocale( Locale('en','US'));
                }, child: Text("English")),
                SizedBox(
                  width: 20,
                ),
                OutlinedButton(onPressed: () {
                  Get.updateLocale( Locale('ur','PK'));
                }, child: Text("Uedu")),
              ],
            )
          ],
        )
      ),
    );
  }
}
