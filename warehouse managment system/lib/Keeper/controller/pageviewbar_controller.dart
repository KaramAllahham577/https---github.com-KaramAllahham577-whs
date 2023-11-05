import 'package:get/get.dart';

class PageViewBar_Controller extends GetxController {
  bool onLastPage = false;

  bool lastpagetrigger(int index) {
    if (index == 2) {
      onLastPage = true;
    } else {
      onLastPage = false;
    }
    update();
    return onLastPage;
  }
}
