import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../view/screen/branch/branches.dart';

class HomePageButtouns extends StatelessWidget {


  HomePageButtouns({
    super.key,
    required this.imageName,
    required this.paddingAmount_s,
    required this.paddingAmount_e,
    required this.paddingAmount_t,
    required this.paddingAmount_b,
    required this.borderWidth,
     this.image_container_width,
     this.image_container_height,
    required this.is_in_top_or_down,
    this.text_down_image,
    this.textSize

  });



  String? imageName;
  double paddingAmount_s;
  double paddingAmount_e;
  double paddingAmount_t;
  double paddingAmount_b;
  double borderWidth;
  double? image_container_width;
  double? image_container_height;
  bool is_in_top_or_down=false;
  String? text_down_image;
  double? textSize;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width; //411
    double screenheight = MediaQuery.of(context).size.height; //707

    return Container(
      width: screenWidth / 6.85,
      margin: EdgeInsetsDirectional.only(
          top: screenheight / 141.4, start: screenWidth / 82.2),
      height: 65,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xff6a040f), width: borderWidth),
        color: const Color(0Xfff4f4f8),
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsetsDirectional.only(
          start: paddingAmount_s,
          end: paddingAmount_e,
          top: paddingAmount_t,
          bottom: paddingAmount_b),
      child: Column(
        children: [
          Container(
            width: image_container_width,
            height: image_container_height,
            child: Image.asset(
              'assets/images/icons/$imageName.png',
              fit: BoxFit.contain,


            ),
          ),


          /* top = 0 , down = 1 */
          if (is_in_top_or_down)
            Text(
            '$text_down_image ',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: "DM Sans",
              fontWeight: FontWeight.w500,
              fontSize: textSize,
              color: Colors.black,
            ),
          ),


        ],
      ),
    );
  }
}
