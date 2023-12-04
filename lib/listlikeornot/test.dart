import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../getx/getxcontrollers.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Material App',
      home: HomeTest()
    );
  }
}


class HomeTest extends StatefulWidget {
  const HomeTest({super.key});

  @override
  State<HomeTest> createState() => _HomeTestState();
}

class _HomeTestState extends State<HomeTest> {
  // List<String> fruits = ["Apple","Orange","Banana","Mango"];
  // List<dynamic> selected = [];

  final GetXCheck check = Get.put(GetXCheck());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Like Or Dislike Check "),
      ),
      backgroundColor: Colors.grey,
      body: ListView.builder(
        itemCount: check.datas.length,

        itemBuilder: (context, index) {
        return  Card(

          child: ListTile(
            onTap: () {
              if(check.SelectedList.contains(check.datas[index])){
                check.SelectedList.remove(check.datas[index]);
                check.checkListAdd();
              }else{
                check.SelectedList.add(check.datas[index]);
                check.checkListAdd();
              }
              // if(selected(fruits[index])){
              //   selected[index];
              //   print("remove${selected[index]}");
              // }else{
              //   selected.add(fruits[index].toString());
              //   print("Added${selected[index]}");
              // }

              // if(selected.contains(fruits[index].toString())){
              //   selected.remove(fruits[index].toString());
              //   print("Remove The Data");
              //   setState(() {
              //
              //   });
              // }else{
              //   selected.add(fruits[index].toString());
              //   print("The Add The Data");
              //   setState(() {
              //
              //   });
              // }
            },
            title: Text(check.datas[index]),
            trailing: Obx(() =>  Icon(check.SelectedList.contains(check.datas[index]) ? Icons.favorite : Icons.favorite_border),)
          ),
        );
      },),
    );
  }
}
