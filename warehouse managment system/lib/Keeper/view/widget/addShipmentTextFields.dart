import 'package:flutter/material.dart';

class AddShipmentTextFields extends StatelessWidget {
  final String labelText;
  final String hintText;
  final String errorText;
  final TextEditingController textEditingController;
  final Color errorBorderColor;

  AddShipmentTextFields({
    Key? key,
    required this.labelText,
    required this.hintText,
    required this.errorText,
    required this.textEditingController,
    required this.errorBorderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7.5),
      child: TextField(
        style: const TextStyle(
          fontSize: 20,
          fontFamily: "Dm Sans",
          color: Colors.white,
        ),
        controller: textEditingController,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          errorStyle: const TextStyle(
            fontFamily: "Dm Sans",
            fontSize: 12.5,
            color: Colors.grey,
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: errorBorderColor),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: const Color(0xff53676D)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Color(0xff6a040f),
              width: 2.5,
            ),
          ),
          labelText: labelText,
          labelStyle: const TextStyle(fontFamily: "Dm Sans", color: Colors.white),
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.white),
          errorText: errorText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              width: 8.0, // Set the border width
            ),
          ),
        ),
      ),
    );
  }
}
