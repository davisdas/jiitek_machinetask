import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt currentdate = 2.obs;

  void changedate(var newdate) {
    currentdate.value = newdate;
  }
}
