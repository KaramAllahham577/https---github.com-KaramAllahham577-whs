













import 'package:flutter/material.dart';

class FifthCircle extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    Paint paint_fill_17 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;


    Path path_17 = Path();
    path_17.moveTo(size.width*0.8622030,size.height*0.5258696);
    path_17.cubicTo(size.width*0.9154455,size.height*0.5258696,size.width*0.9953713,size.height*0.5477101,size.width*0.9953713,size.height*0.6038261);
    path_17.cubicTo(size.width*0.9953713,size.height*0.6350145,size.width*0.9554208,size.height*0.6818116,size.width*0.8622030,size.height*0.6818116);
    path_17.cubicTo(size.width*0.8089356,size.height*0.6818116,size.width*0.7290594,size.height*0.6584058,size.width*0.7290594,size.height*0.6038261);
    path_17.cubicTo(size.width*0.7290594,size.height*0.5726522,size.width*0.7690099,size.height*0.5258696,size.width*0.8622030,size.height*0.5258696);
    path_17.close();

    canvas.drawPath(path_17, paint_fill_17);


    // Circle Copy Copy

    Paint paint_stroke_17 = Paint()
      ..color = const Color.fromARGB(255, 106, 4, 15)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width*0.01
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;



    canvas.drawPath(path_17, paint_stroke_17);


  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}

