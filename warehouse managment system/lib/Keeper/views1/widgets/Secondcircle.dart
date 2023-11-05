













import 'package:flutter/material.dart';

class SecondCircle extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {


    Paint paint_fill_14 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;


    Path path_14 = Path();
    path_14.moveTo(size.width*0.5175532,size.height*0.8176833);
    path_14.cubicTo(size.width*0.5774344,size.height*0.8176833,size.width*0.6672932,size.height*0.8422346,size.width*0.6672932,size.height*0.9053355);
    path_14.cubicTo(size.width*0.6672932,size.height*0.9403964,size.width*0.6223638,size.height*0.9930094,size.width*0.5175532,size.height*0.9930094);
    path_14.cubicTo(size.width*0.4576720,size.height*0.9930094,size.width*0.3678502,size.height*0.9667029,size.width*0.3678502,size.height*0.9053355);
    path_14.cubicTo(size.width*0.3678502,size.height*0.8702746,size.width*0.4127796,size.height*0.8176833,size.width*0.5175532,size.height*0.8176833);
    path_14.close();

    canvas.drawPath(path_14, paint_fill_14);


// Circle Copy

    Paint paint_stroke_14 = Paint()
      ..color = const Color.fromARGB(255, 106, 4, 15)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width*0.01
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;



    canvas.drawPath(path_14, paint_stroke_14);

  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}

