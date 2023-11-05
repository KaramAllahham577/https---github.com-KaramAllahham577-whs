import 'package:flutter/material.dart';

import '../../../core/constant/app_color.dart';

class CustomText extends StatelessWidget {
   CustomText(
      {Key? key,
        required this.onChanged,
      required this.title,
      required this.icon,
      required this.keyboardType,
      required this.validator,
      required this.myController})
      : super(key: key);
  final String title;
  final Icon icon;
  final String? Function(String?)? validator;
  final TextEditingController myController;
  final TextInputType? keyboardType;
  void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.backGround,
      child: TextFormField(
        onChanged: onChanged,
        style: TextStyle(color: Colors.white),
        controller: myController,
        validator: validator,
        decoration: InputDecoration(
          labelText: title,
          suffixIcon: icon,
          labelStyle: const TextStyle(color: Colors.white),
          // Color of the label text
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColor.color3, width: 2.0),
            // Border color and width when the field is enabled
            borderRadius: BorderRadius.circular(10.0), // Border radius
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColor.color2, width: 2.0),
            // Border color and width when the field is focused
            borderRadius: BorderRadius.circular(10.0), // Border radius
          ),
        ),
        keyboardType: keyboardType,
      ),
    );
  }
}
