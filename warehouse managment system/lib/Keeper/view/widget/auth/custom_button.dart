import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled3/Keeper/controller/auth/login_controller.dart';

import '../../../controller/auth/register_controller.dart';

class CustomButton extends StatelessWidget {
  final String text;
   void Function()? onPressed;


   CustomButton({
    Key? key,
    required this.text,
  required this.onPressed

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(RegisterController());
    return GetBuilder<RegisterController>(builder: (controller)=>
        Container(

      width: double.infinity,
      child: OutlinedButton(
        style: ButtonStyle(
            padding: MaterialStateProperty.all(const EdgeInsets.all(15)),
            elevation: MaterialStateProperty.all(5),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            backgroundColor: MaterialStateProperty.all(Colors.white)),
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(
              color:  Color(0xFF6A040F),
              fontWeight: FontWeight.bold,
              fontSize: 18),
        ),
      ),
    ));
  }
}
