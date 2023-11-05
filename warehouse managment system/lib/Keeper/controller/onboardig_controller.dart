import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:untitled3/Keeper/data/datasource/static/static.dart';

import '../view/screen/auth/login_page.dart';

class OnBoardingController extends GetxController {
  int currentPage = 0;
  late PageController pageController;

  void next() {
    currentPage++;
    if (currentPage > onBoardingList.length - 1) {

      Get.to(const Login());
    } else {


      pageController.animateToPage(currentPage,
          duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
    }
  }

  void onPageChanged(int index) {
    currentPage = index;
    update();
  }

  @override
  void onInit() {
    super.onInit();
    pageController = PageController();
    update();
  }
}
