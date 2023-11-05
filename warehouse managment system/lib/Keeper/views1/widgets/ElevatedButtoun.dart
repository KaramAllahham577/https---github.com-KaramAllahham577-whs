import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled3/Keeper/views1/screen/loginpage.dart';


import '../screen/homepage.dart';

class ElevatedButtouns extends StatelessWidget {
  String? firstWidgetletter;
  String? insideText;

  ElevatedButtouns(
      {super.key, required this.firstWidgetletter, this.insideText});

  Widget? handleCharacter(String? firstWidgetletter) {
    ElevatedButtouns e = ElevatedButtouns(
      firstWidgetletter: firstWidgetletter,
    );
    Widget? childWidget;

    switch (firstWidgetletter) {
      case 'Text':
        childWidget = Text(
          "$insideText",
          style: const TextStyle(
            fontFamily: "Bruno Ace SC",
            fontSize: 20,
            color: Colors.white,
          ),
        );
        break;
      case 'Container':
        childWidget = Container(
          width: 100,
          height: 200,
          color: Colors.red,
        );
        break;
      default:
        handleDefault();
    }
    return childWidget;
  }

  void handleDefault() {
    print("Invalid character.");
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          LoginPage l =LoginPage();


        },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          fixedSize: const Size(220, 40),
          backgroundColor: const Color(0xff212529),
          side: const BorderSide(
            color: Color(0xff6a040f),
            width: 2,
          ),
        ),
        child: handleCharacter('$firstWidgetletter'));
  }
}
