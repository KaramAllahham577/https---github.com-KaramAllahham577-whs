import 'package:flutter/material.dart';

class LoginPageTextFields extends StatelessWidget {
  String labelText;
  String hintText;
  String errorText;
  TextEditingController textEditingController = TextEditingController();
  final bool isPassword; // Add this parameter for password field

  LoginPageTextFields({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.errorText,
    required this.textEditingController,
    this.isPassword = false, // Default value is false

  });

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
        obscureText: isPassword, // Set obscureText to true for password field

        decoration: InputDecoration(
          errorStyle:
              const TextStyle(
                  fontFamily: "Dm Sans",
                  fontSize: 12.5,
                  color: Colors.grey),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.red),
          ),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Color(0xff53676D),
              )),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Color(0xff6a040f),
                width: 2.5,
              )),
          labelText: labelText,
          labelStyle:
              const TextStyle(fontFamily: "Dm Sans", color: Colors.white),
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.white),
          // errorText: errorText,
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
