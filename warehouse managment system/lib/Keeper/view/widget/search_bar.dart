import 'package:flutter/material.dart';

import '../../core/constant/app_color.dart';
import '../screen/categories/search_categories.dart';

class SearchBar extends StatelessWidget {
   SearchBar({Key? key, required this.title, required this.onTap,}) : super(key: key);
 final String title;

final   void Function()? onTap;
@override
  Widget build(BuildContext context) {
    return   SizedBox(
      height: 180,
      child: Stack(
        children: [
          Container(
            height: 153,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(36),
                    bottomRight: Radius.circular(36)),
                color: Color(0xff6a040f)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children:  [
                        Text(
                          title,
                          style: const TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
              top: 120,
              right: 0,
              left: 0,
              child: Container(
                  alignment: Alignment.center,
                  height: 54,
                  margin:
                  const EdgeInsets.symmetric(horizontal: 20),
                  padding:
                  const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                            offset: const Offset(0, 10),
                            blurRadius: 50,
                            color: AppColor.color3
                                .withOpacity(0.40)),
                      ]),
                  child: Stack(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          hintText: "Search",
                          hintStyle: TextStyle(
                              color: AppColor.color3
                                  .withOpacity(0.5)),
                          suffixIcon: const Icon(
                            Icons.search_rounded,
                            color: AppColor.color3,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: onTap
                      )
                    ],
                  ))),
        ],
      ),
    );
  }
}
