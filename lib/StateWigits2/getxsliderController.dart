import 'package:get/get.dart';

class controllers extends GetxController{
  RxDouble oper = .4.obs;
  void increment(double val){
    oper.value = val;
  }
}