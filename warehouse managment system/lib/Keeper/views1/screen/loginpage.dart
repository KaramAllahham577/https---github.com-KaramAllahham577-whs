import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'package:get/get.dart' ;
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:http/http.dart';
import 'package:untitled3/Keeper/view/homepage.dart';

import '../../controller/auth/login_controller.dart';
import '../../controllers/logincontroller.dart';
import '../widgets/loginPageTextFields.dart';

class LoginPage extends StatelessWidget {
   LoginPage({super.key});
  @override






  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width; //411
    double screenheight = MediaQuery.of(context).size.height; //707

Get.put(LoginController());
    return Scaffold(
        backgroundColor: const Color(0xff161a1d),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: SingleChildScrollView(
              child: Container(
                height: screenheight / 1.2,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color(0xff6a040f), width: screenWidth / 150),
                    color: const Color(0xff161a1d),
                    borderRadius: BorderRadius.circular(17.5)),
                child: Column(
                  children: [
                    Container(
                        margin: EdgeInsetsDirectional.only(
                          start: screenWidth / 14,
                          end: screenWidth / 15,
                        ),
                        padding: EdgeInsetsDirectional.only(
                          start: screenWidth / 10,
                          end: screenWidth / 10,
                        ),
                        child: Lottie.asset(
                          'assets/lottie/Box.json',
                        )),
                    const Text(
                      "Welcome Back",
                      style: TextStyle(
                        fontFamily: "Bruno Ace SC",
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: screenheight / 35.35,
                    ),
                    
                   GetBuilder<LoginController>(
                     init: LoginController(),
                     builder: (loginController) =>
                     LoginPageTextFields(
                          labelText: 'Email',
                          errorText: 'Invalid id',
                          hintText: 'Enter Your id',
                          textEditingController: loginController.id_controller,
                        ),
                   ),

                    GetBuilder<LoginController>(
                      init: LoginController(),
                      builder: (loginController) =>
                          LoginPageTextFields(
                            labelText: 'password',
                            errorText: 'Invalid password',
                            hintText: 'Enter Your password',
                            textEditingController: loginController.passwordcontroller,
                            isPassword: true, // Set this to true for password field
                          ),

                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    // ElevatedButtouns(
                    //
                    //     firstWidgetletter: 'Text', insideText: "Log In"),



                    GetBuilder<LoginController>(
                      init: LoginController(),
                      builder: (loginController) => GestureDetector(
                        onTap: () async {
                          loginController.login();
                        },
                        child: Container(
                          width: 150,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.25),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: const Color(0xff6a040f), width: 2),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'Log In ',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: "DM Sans",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 25,
                                  color: Colors.white70,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
