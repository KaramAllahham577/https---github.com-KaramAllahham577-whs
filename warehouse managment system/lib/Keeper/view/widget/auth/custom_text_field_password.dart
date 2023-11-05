import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:untitled3/Keeper/controller/auth/login_controller.dart';
import 'package:untitled3/Keeper/controller/auth/register_controller.dart';

// ignore: must_be_immutable
class CustomTextFieldPassword extends StatelessWidget {
  late String hint, label;

  TextInputType? textInputType;
  late TextEditingController myController;
  late String? Function(String?)? validator;

  CustomTextFieldPassword({
    Key? key,
    required this.label,
    required this.hint,
    this.textInputType,
    required this.myController,
    required this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RegisterController>(
        builder: (controller) => Container(
              margin: const EdgeInsets.only(bottom: 15),
              alignment: Alignment.centerLeft,
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
                validator: validator,
                controller: myController,
                keyboardType: TextInputType.visiblePassword,
                obscureText: controller.isVisible,
                style: const TextStyle(
                  color: Colors.black87,
                ),
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(top: 14),
                    suffixIcon: IconButton(
                      icon: controller.isVisible == true
                          ? const Icon(Icons.visibility)
                          : const Icon(Icons.visibility_off),
                      onPressed: () {
                        controller.change();
                      },
                    ),
                    border: InputBorder.none,
                    prefixIcon: const Icon(
                      Icons.lock,
                      color: Color(0xff8f2d56),
                    ),
                    hintText: hint,
                    hintStyle: const TextStyle(
                      color: Colors.black38,
                    )),
              ),
            ));
  }
}
