import 'package:get/get.dart';

class GetXCheck extends GetxController{
  RxList<String> datas = ["Apple","Banana","Santru","daru"].obs;


  RxList<dynamic> SelectedList = [].obs;


  checkListAdd(){
    for(int i=0;i<SelectedList.length;i++){
      print(SelectedList[i]);
    }
  }
}