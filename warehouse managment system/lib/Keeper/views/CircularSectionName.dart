import 'package:flutter/material.dart';

class CircularSectionName extends StatelessWidget {
  final Color backgroundColor;
  final String avatarText;

  const CircularSectionName({
    required this.backgroundColor,
    required this.avatarText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: backgroundColor,
          radius: 10,
        ),
        SizedBox(width: 5),
        Text(
          avatarText,
          style: TextStyle(
            fontFamily: "Dm Sans",
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        SizedBox(width: 15),

      ],
    );
  }
}
