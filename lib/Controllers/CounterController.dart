import 'package:get/get.dart';

class CounterController extends GetxController{
  var counter = 0.obs;

  void increment(){
    // counter = counter + 1;
    counter++;
  }
  void reset(){
    counter = 0.obs;
  }
}