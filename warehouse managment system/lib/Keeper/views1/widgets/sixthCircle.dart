













import 'package:flutter/material.dart';

class SixthCircle extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    Paint paint_fill_18 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;


    Path path_18 = Path();
    path_18.moveTo(size.width*0.1501485,size.height*0.5160290);
    path_18.cubicTo(size.width*0.2058168,size.height*0.5160290,size.width*0.2893564,size.height*0.5388551,size.width*0.2893564,size.height*0.5975072);
    path_18.cubicTo(size.width*0.2893564,size.height*0.6301014,size.width*0.2475990,size.height*0.6790145,size.width*0.1501485,size.height*0.6790145);
    path_18.cubicTo(size.width*0.0945050,size.height*0.6790145,size.width*0.0109901,size.height*0.6545507,size.width*0.0109901,size.height*0.5975072);
    path_18.cubicTo(size.width*0.0109901,size.height*0.5649130,size.width*0.0527723,size.height*0.5160290,size.width*0.1501485,size.height*0.5160290);
    path_18.close();

    canvas.drawPath(path_18, paint_fill_18);


    // Circle Copy Copy Copy

    Paint paint_stroke_18 = Paint()
      ..color = const Color.fromARGB(255, 106, 4, 15)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width*0.01
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;



    canvas.drawPath(path_18, paint_stroke_18);


  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}

