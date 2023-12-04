import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Column(
          children: [
            Card(
              child: ListTile(
                title: Text('Getx Dailog Alert'),
                subtitle: Text("Getx dailog Alert Getx"),
                onTap: () {
                  Get.defaultDialog(
                    titlePadding: EdgeInsets.only(top: 20),
                    title: 'Delete Chat',
                    contentPadding: EdgeInsets.all(20),
                    middleText: "Are Tou sure Delete The Chart",
                    confirm: TextButton(onPressed: () {
                      Get.snackbar("Deleted",
                          "deleted");
                    }, child:Text("Ohk")),
                    cancel: TextButton(onPressed: () {
                      Get.back();
                    }, child:Text("no")),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Getx Bottom Sheet'),
                subtitle: Text("Getx dailog Alert With Bottom Sheet"),
                onTap: () {
                  Get.bottomSheet(
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.red,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
                      ),
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(Icons.light_mode),
                            title: Text("Light Theame"),
                            onTap: () {
                                Get.changeTheme(ThemeData.light());
                            },
                          ),
                          ListTile(
                            onTap: () {
                              Get.changeTheme(ThemeData.dark());
                            },
                            leading: Icon(Icons.light_mode),
                            title: Text("Dart Theame"),
                          ),
                        ],
                      ),
                    )
                  );
                },
              ),
            )
          ],
        )
      ),
    );
  }
}
