import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({Key? key, required this.title, required this.text}) : super(key: key);

  final String title;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
            color: const Color(0xff6a040f), width: 2.5),
        color: const Color(0xff161a1d),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(
          horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:  [
          Text(
            title,
            style: const TextStyle(color: Colors.white, fontSize: 20),
          ),

          SizedBox(width: 10,),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),

        ],
      ),
    );
  }
}
