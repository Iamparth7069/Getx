import 'package:get/get.dart';

class control extends GetxController{
  RxBool bools = true.obs;
  void check(bool bol){
    bools.value = bol;
  }
}