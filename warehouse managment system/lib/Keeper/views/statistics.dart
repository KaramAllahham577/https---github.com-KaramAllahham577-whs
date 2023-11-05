import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../view/homepage.dart';
import 'Graphline.dart';
import 'circularStatistcsButtoun.dart';
import 'mainProductsStatistcs.dart';


class Statistics extends StatelessWidget {
  const Statistics({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff161a1d),
      appBar: AppBar(
        elevation: 20,
        backgroundColor: const Color(0xff161a1d),
        title: const Center(
          child: Text(
            'Statistics ',
            style: TextStyle(
              fontFamily: "DM Sans",
              fontWeight: FontWeight.w500,
              fontSize: 25,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          width: 411,
          height: 707,
          child: Stack(
            children: [
              SizedBox(
                width: 411,
                height: 707,
                child: CustomPaint(
                  size: Size(20, (20 * 1.7201946472019465).toDouble()),
                  //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                  painter: Lines(),
                ),
              ),
              Transform.translate(
                offset: const Offset(150, 0),
                child: CircularStatisticsButton(
                  label: 'Products',
                  onPressed: () {
                    Get.to( MainProductsStatistics());
                  },
                ),
              ),
              Transform.translate(
                offset: const Offset(147.5, 140),
                child: CircularStatisticsButton(
                  label: 'Categories',
                  onPressed: () {
                    Get.to(HomePage13());
                  },
                ),
              ),
              Transform.translate(
                offset: const Offset(147.5, 350),
                child: CircularStatisticsButton(
                  label: 'Finanicals',
                  onPressed: () {
                    Get.to(HomePage13());
                  },
                ),
              ),
              Transform.translate(
                offset: const Offset(147.5, 350),
                child: CircularStatisticsButton(
                  label: 'Finanicing',
                  onPressed: () {
                    Get.to(HomePage13());
                  },
                ),
              ),
              Transform.translate(
                offset: const Offset(5, 350),
                child: CircularStatisticsButton(
                  label: 'Employees',
                  onPressed: () {
                    Get.to(HomePage13());
                  },
                ),
              ),
              Transform.translate(
                offset: const Offset(290, 350),
                child: CircularStatisticsButton(
                  label: 'Branches',
                  onPressed: () {
                    Get.to(HomePage13());
                  },
                ),
              ),
              Transform.translate(
                offset: const Offset(155, 550),
                child: CircularStatisticsButton(
                  label: 'Comparison',
                  onPressed: () {
                    Get.to(HomePage13());
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Circle Copy Copy

    // Circle Copy Copy Copy

    // Circle Copy Copy

    // Circle Copy Copy Copy

    Paint paint_fill_18 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_18 = Path();
    path_18.moveTo(size.width * 0.1501485, size.height * 0.5160290);
    path_18.cubicTo(
        size.width * 0.2058168,
        size.height * 0.5160290,
        size.width * 0.2893564,
        size.height * 0.5388551,
        size.width * 0.2893564,
        size.height * 0.5975072);
    path_18.cubicTo(
        size.width * 0.2893564,
        size.height * 0.6301014,
        size.width * 0.2475990,
        size.height * 0.6790145,
        size.width * 0.1501485,
        size.height * 0.6790145);
    path_18.cubicTo(
        size.width * 0.0945050,
        size.height * 0.6790145,
        size.width * 0.0109901,
        size.height * 0.6545507,
        size.width * 0.0109901,
        size.height * 0.5975072);
    path_18.cubicTo(
        size.width * 0.0109901,
        size.height * 0.5649130,
        size.width * 0.0527723,
        size.height * 0.5160290,
        size.width * 0.1501485,
        size.height * 0.5160290);
    path_18.close();

    canvas.drawPath(path_18, paint_fill_18);

    // Circle Copy Copy Copy

    Paint paint_stroke_18 = Paint()
      ..color = const Color.fromARGB(255, 106, 4, 15)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.01
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_18, paint_stroke_18);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
