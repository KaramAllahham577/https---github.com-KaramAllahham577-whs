import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({Key? key, required this.icon, required this.onPressed}) : super(key: key);
  final Icon icon;
  final void Function()? onPressed;


  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      width: 55,
      height: 55,
      decoration:
      BoxDecoration(borderRadius: BorderRadius.circular(25)),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          width: 55,
          height: 55,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
          ),
          child: IconButton(
            onPressed: onPressed,
            icon:  icon,
          ),
        ),
      ),
    );
  }
}
