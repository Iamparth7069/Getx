import 'package:get/get.dart';

class CounterController extends GetxController{
  RxInt i = 1.obs;
  void increment(){
    i.value++;
    print(i.value.toString());
  }
}