// في الملف CircularButton.dart
import 'package:flutter/material.dart';

class CircularStatisticsButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const CircularStatisticsButton({
    super.key,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 120,
        height: 120,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          border: Border.all(
            color: const Color(0xff6a040f),
            width: 5,
          ),
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              fontFamily: "DM Sans",
              fontWeight: FontWeight.w500,
              fontSize: 19.25,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
