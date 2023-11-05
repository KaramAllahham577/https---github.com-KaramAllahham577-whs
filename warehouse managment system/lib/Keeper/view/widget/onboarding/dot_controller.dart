import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled3/Keeper/controller/onboardig_controller.dart';

import '../../../data/datasource/static/static.dart';

class DotController extends StatelessWidget {
  const DotController({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingController>(
        builder: (controller)=>Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(
          growable: false,
          onBoardingList.length,
              (index) => AnimatedContainer(

            margin: const EdgeInsets.only(left: 5),
            duration: const Duration(milliseconds: 500),
            height:6 ,
            width: controller.currentPage==index ? 15:5 ,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(50),
            ),
          ),
        )
      ],
    ));
  }
}
