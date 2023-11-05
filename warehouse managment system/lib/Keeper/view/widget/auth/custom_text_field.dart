import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  late String hint, label;
  late Icon icon;

  late TextInputType? textInputType;
  late String? Function(String?)? validator;
  late TextEditingController myController;

  CustomTextField(
      {Key? key,
      required this.label,
      required this.hint,
      required this.icon,
      required this.textInputType,
      required this.validator,
      required this.myController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
              color: Color(0xff8f2d56),
              blurRadius: 6,
              offset: Offset(1, 2))
        ],
      ),
      height: 60,
      child: TextFormField(
        controller: myController,
        validator: validator,
        style: const TextStyle(
          color: Colors.black87,
        ),
        decoration: InputDecoration(



         border: InputBorder.none,
          // border: OutlineInputBorder(
          //
          //     borderRadius: BorderRadius.circular(50)),
          contentPadding: const EdgeInsets.only(top: 14),
          prefixIcon: icon,
          hintText: hint,

          hintStyle: const TextStyle(
            color: Colors.black38,
          ),
          floatingLabelBehavior: FloatingLabelBehavior.always,
        ),
        keyboardType: textInputType,
      ),
    );
  }
}
