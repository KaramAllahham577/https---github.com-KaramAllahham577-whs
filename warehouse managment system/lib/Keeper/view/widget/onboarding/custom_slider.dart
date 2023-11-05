import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:untitled3/Keeper/controller/onboardig_controller.dart';

import '../../../data/datasource/static/static.dart';

class CustomSlider extends GetView<OnBoardingController> {
  const CustomSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (val){
        controller.onPageChanged(val);
      },
        itemCount: onBoardingList.length,
        itemBuilder: (context, i) => Column(
          children: [
            Image.asset(
              onBoardingList[i].image,
              height: 450,
              width: 400,
              fit: BoxFit.fill,
            ),
            const SizedBox(
              height: 80,
            ),
            Text(
                onBoardingList[i].body,
                style: const TextStyle(fontSize: 30))
          ],
        )
    );
  }}


