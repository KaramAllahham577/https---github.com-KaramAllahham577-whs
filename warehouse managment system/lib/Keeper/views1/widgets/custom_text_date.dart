import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

import '../../core/constant/app_color.dart';


class CustomTextDate extends StatelessWidget {
   CustomTextDate(
      {Key? key,
      required this.title,
      required this.icon,
      required this.keyboardType,
      required this.validator,
      required this.myController})
      : super(key: key);
  final String title;
  final Icon icon;
  final String? Function(String?)? validator;
    TextEditingController myController;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff161a1d),
      child: TextFormField(
        style: TextStyle(color: Colors.white),
        controller: myController,
        validator: validator,
        decoration: InputDecoration(
          labelText: title,
          suffixIcon: icon,
          labelStyle: const TextStyle(color: Colors.white),

          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColor.color3, width: 2.0),

            borderRadius: BorderRadius.circular(10.0), // Border radius
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColor.color2, width: 2.0),

            borderRadius: BorderRadius.circular(10.0), // Border radius
          ),
        ),
        onTap: () async {
          DateTime? pickedDate = await showDatePicker(

              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2000),
              lastDate: DateTime(2101));
          if(pickedDate != null)
          {
            myController.text= DateFormat("yyyy-MM-dd").format(pickedDate);
            myController.text= DateTime.now() as String;
          }
        },
        keyboardType: keyboardType,
      ),
    );
  }
}
