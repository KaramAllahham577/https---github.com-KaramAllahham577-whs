import 'package:get/get.dart';

class PageViewBar_Controller extends GetxController {
  bool onlastpage = false;

  bool lastpagetrigger(int index) {
    if (index == 2) {
      onlastpage = true;
    } else {
      onlastpage = false;
    }
    update();
    return onlastpage;
  }
}
