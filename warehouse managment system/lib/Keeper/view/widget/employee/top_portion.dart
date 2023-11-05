import 'package:flutter/material.dart';

class TopPortion extends StatelessWidget {
  const TopPortion({Key? key, required this.Image}) : super(key: key);
 final String Image;
  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 50),
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Color(0xFF6A040F),
                    Color(0xFFB71C1C),
                  ]),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              )),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            width: 150,
            height: 150,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Container(
                  decoration:  BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(Image)),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
