import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled3/Keeper/controller/onboardig_controller.dart';
import 'package:untitled3/Keeper/core/constant/app_color.dart';
import 'package:untitled3/Keeper/view/widget/onboarding/custom_slider.dart';
import 'package:untitled3/Keeper/view/widget/onboarding/dot_controller.dart';

import '../../data/datasource/static/static.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingController(), permanent: false);
    return Scaffold(
      body: Container(
        color: AppColor.color0,
        child: Stack(
          children: [
            const CustomSlider(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 700,
                ),
                const DotController(),
                const SizedBox(
                  height: 10,
                ),
                GetBuilder<OnBoardingController>(
                    builder: (controller) => ElevatedButton(
                        onPressed: () {
                          controller.next();
                        },
                        child:
                            controller.currentPage == onBoardingList.length - 1
                                ? const Text("Login")
                                : const Text("Next")))
              ],
            )
          ],
        ),
      ),
    );
  }
}
