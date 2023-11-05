import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled3/Keeper/core/function/validator.dart';
import 'package:untitled3/Keeper/view/widget/auth/custom_button.dart';

import '../../../controller/auth/login_controller.dart';
import '../../widget/auth/custom_text_field.dart';
import '../../widget/auth/custom_text_field_password.dart';

class Login extends GetView<LoginController1> {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(LoginController1());
    return Scaffold(
      body: Form(
        key: controller.formState,
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0x665ac18e),
                  Color(0x995ac18e),
                  Color(0xcc5ac18e),
                  Color(0xff5ac18e),
                ]),
          ),
          child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding:
                  const EdgeInsets.symmetric(horizontal: 25, vertical: 120),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Sign In',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Sign in to your account",
                        style: TextStyle(color: Colors.teal),
                      )
                    ],
                  ),

                  const SizedBox(
                    height: 100,
                  ),
                  CustomTextField(
                    label: 'email',
                    hint: "enter your email",
                    icon: const Icon(
                      Icons.email,
                      color: Color(0xff5ac18e),
                    ),
                    textInputType: TextInputType.emailAddress,
                    validator: (val) {
                      return validInput(val!, 8, 'email');
                    },
                    myController: controller.email,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  // buildPassword(),
                  CustomTextFieldPassword(
                    label: 'Password',
                    hint: "Enter your Password",
                    myController: controller.password,
                    validator: (val ) {return validInput(val!, 8,"") ; },
                  ),

                  const SizedBox(
                    height: 100,
                  ),
                   CustomButton(text: 'LOGIN', onPressed: () { controller.postData(); },),
                ],
              )),
        ),
      ),
    );
  }
}
