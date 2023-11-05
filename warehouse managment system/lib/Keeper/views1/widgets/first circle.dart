

import 'package:flutter/material.dart';


class  FirstCircle extends StatelessWidget {
  const FirstCircle({super.key});


  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 400,
      height: 700,
      child: CustomPaint(
        foregroundPainter: FirstCircl(),
      ),
    );
  }
}

class FirstCircl extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {

    Paint paint_fill_13 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;


    Path path_13 = Path();
    path_13.moveTo(size.width*0.5089604,size.height*0.5132464);
    path_13.cubicTo(size.width*0.5661881,size.height*0.5132464,size.width*0.6520545,size.height*0.5367246,size.width*0.6520545,size.height*0.5970290);
    path_13.cubicTo(size.width*0.6520545,size.height*0.6305362,size.width*0.6091337,size.height*0.6808116,size.width*0.5089604,size.height*0.6808116);
    path_13.cubicTo(size.width*0.4517327,size.height*0.6808116,size.width*0.3658663,size.height*0.6556812,size.width*0.3658663,size.height*0.5970290);
    path_13.cubicTo(size.width*0.3658663,size.height*0.5635217,size.width*0.4088119,size.height*0.5132464,size.width*0.5089604,size.height*0.5132464);
    path_13.close();

    canvas.drawPath(path_13, paint_fill_13);


    // Circle

    Paint paint_stroke_13 = Paint()
      ..color = const Color.fromARGB(255, 106, 4, 15)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width*0.01
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;



    canvas.drawPath(path_13, paint_stroke_13);


  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}

