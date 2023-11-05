import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String text, image;
  final void Function()? onPressed;

  const CustomListTile({Key? key, required this.text, required this.image, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),),

      margin: const EdgeInsets.all(20),
      height: 150,
      child: Stack(
        children: [
          Positioned.fill(
            child: ClipRRect
              (
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                image,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 120,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.black.withOpacity(0.7),
                      Colors.transparent,
                    ]),
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                ),
              ),
            ),
          ),
          SizedBox(

            height: 150,
            child: Column(
              children: [
                ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child: Row(
                      children: [
                        Text(
                          text,
                          style: const TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  onTap:
                     onPressed,

                  subtitle: const Text('dsa'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
