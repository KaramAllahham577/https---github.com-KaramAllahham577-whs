













import 'package:flutter/material.dart';

class ForthCircle extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {


    Paint paint_fill_16 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;


    Path path_16 = Path();
    path_16.moveTo(size.width*0.5034406,size.height*-0.0090435);
    path_16.cubicTo(size.width*0.5546535,size.height*-0.0090435,size.width*0.6314851,size.height*0.0119565,size.width*0.6314851,size.height*0.0659275);
    path_16.cubicTo(size.width*0.6314851,size.height*0.0959130,size.width*0.5930693,size.height*0.1409275,size.width*0.5034406,size.height*0.1409275);
    path_16.cubicTo(size.width*0.4522277,size.height*0.1409275,size.width*0.3753960,size.height*0.1184203,size.width*0.3753960,size.height*0.0659275);
    path_16.cubicTo(size.width*0.3753960,size.height*0.0359420,size.width*0.4138119,size.height*-0.0090435,size.width*0.5034406,size.height*-0.0090435);
    path_16.close();

    canvas.drawPath(path_16, paint_fill_16);


    // Circle Copy Copy Copy

    Paint paint_stroke_16 = Paint()
      ..color = const Color.fromARGB(187, 106, 4, 15)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width*0.01
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;



    canvas.drawPath(path_16, paint_stroke_16);


  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}

