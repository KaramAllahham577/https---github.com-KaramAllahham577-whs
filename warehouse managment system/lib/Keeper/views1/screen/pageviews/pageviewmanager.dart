import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:untitled3/Keeper/views1/screen/pageviews/pagebiewthree.dart';
import 'package:untitled3/Keeper/views1/screen/pageviews/pageviewone.dart';
import 'package:untitled3/Keeper/views1/screen/pageviews/pageviewtwo.dart';


import '../../../controllers/pageviewbar_controller.dart';
import '../loginpage.dart';

class PageViewManager extends StatelessWidget {
  final List<Widget> pages = [
    const PageViewOne(),
    const PageViewTwo(),
    const PageViewThree(),
  ];

  PageController pvc = PageController();
  int indexx = 0;

  PageViewManager({super.key});


  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: GetBuilder<PageViewBar_Controller>(
        init: PageViewBar_Controller(),
        builder: (controller) => Stack(
          children: [
            PageView(
                controller: pvc,
                children: pages,
                onPageChanged: (indexx) {
                  controller.lastpagetrigger(indexx);
                }),
            Container(
                alignment: const Alignment(0, 0.75),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () => pvc.jumpToPage(2),
                      child: const Text(
                        "Skip",
                        style: TextStyle(
                          fontFamily: "Bruno Ace SC",
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SmoothPageIndicator(
                      controller: pvc,
                      count: 3,
                      effect: const ExpandingDotsEffect(
                          spacing: 3,
                          radius: 8.0,
                          dotHeight: 10,
                          dotWidth: 20,
                          activeDotColor: Color(0xff6a040f),
                          dotColor: Color.fromARGB(255, 136, 118, 118)),
                    ),
                    controller.onlastpage
                        ? GestureDetector(
                            onTap: () => Get.offAll( LoginPage()),
                            child: const Text(
                              "Done",
                              style: TextStyle(
                                fontFamily: "Bruno Ace SC",
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          )
                        : GestureDetector(
                            onTap: () => pvc.nextPage(
                                duration: const Duration(milliseconds: 1200),
                                curve: Curves.easeOutCubic),
                            child: const Text(
                              "Next",
                              style: TextStyle(
                                fontFamily: "Bruno Ace SC",
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
