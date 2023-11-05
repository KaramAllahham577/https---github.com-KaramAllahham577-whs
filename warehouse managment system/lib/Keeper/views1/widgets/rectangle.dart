import 'package:flutter/material.dart';

class Rectangle1 extends StatelessWidget {
  const Rectangle1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
          width: 20,
          height: 20,
          child: CustomPaint(
            foregroundPainter: RectanglePainter(),
          ),
        );


  }
}

class RectanglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color=Color(0xff007f5f)
      ..style=PaintingStyle.stroke
      ..strokeWidth = 2;

    final rectangle=Path();
    rectangle.moveTo(0,0);
    rectangle.lineTo(10,20 );
    rectangle.lineTo(20,0 );
    rectangle.close();

    canvas.drawPath(rectangle,paint);


  }


  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
