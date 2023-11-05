import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class PageViewThree extends StatelessWidget {
  const PageViewThree({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width; //411
    double screenheight = MediaQuery.of(context).size.height; //707
    print('width=$screenWidth');
    print('heigt=$screenheight');

    return Scaffold(
        body: SafeArea(
      child: Container(
        color: const Color(0xff161a1d),
        padding: EdgeInsets.all(screenWidth / 41),
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(
                  color: const Color(0xff6a040f), width: screenWidth / 150),
              color: const Color(0xff161a1d),
              borderRadius: BorderRadius.circular(17.5)),
          child: Column(
            children: [ 
              Padding(
                padding: EdgeInsetsDirectional.only(
                    start: screenWidth / 14,
                    top: screenheight / 6.5,
                    end: screenWidth / 15),
                child: Column(
                  children: [
                    Lottie.asset('assets/lottie/employees.json'),
                    Text( 
                      'All Details In\n Your Hand',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        
                        fontFamily: "Bruno Ace SC",
                        fontSize: screenWidth / 15,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
