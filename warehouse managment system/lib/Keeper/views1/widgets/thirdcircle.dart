













import 'package:flutter/material.dart';

class ThirdCircle extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {


    Paint paint_fill_15 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;


    Path path_15 = Path();
    path_15.moveTo(size.width*0.5015099,size.height*0.2069565);
    path_15.cubicTo(size.width*0.5560891,size.height*0.2069565,size.width*0.6380198,size.height*0.2293333,size.width*0.6380198,size.height*0.2868696);
    path_15.cubicTo(size.width*0.6380198,size.height*0.3188261,size.width*0.5970545,size.height*0.3667971,size.width*0.5015099,size.height*0.3667971);
    path_15.cubicTo(size.width*0.4469059,size.height*0.3667971,size.width*0.3650000,size.height*0.3428116,size.width*0.3650000,size.height*0.2868696);
    path_15.cubicTo(size.width*0.3650000,size.height*0.2548986,size.width*0.4059653,size.height*0.2069565,size.width*0.5015099,size.height*0.2069565);
    path_15.close();

    canvas.drawPath(path_15, paint_fill_15);


    // Circle Copy Copy

    Paint paint_stroke_15 = Paint()
      ..color = const Color.fromARGB(255, 106, 4, 15)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width*0.01
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;



    canvas.drawPath(path_15, paint_stroke_15);


  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}

