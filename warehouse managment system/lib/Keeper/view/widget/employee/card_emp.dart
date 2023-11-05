import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/constant/image_asset.dart';

class CardEmp extends StatelessWidget {
  const CardEmp({Key? key, required this.position, required this.employeeName}) : super(key: key);
  final position;
  final employeeName;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(10),
              ),
              image: DecorationImage(
                image: AssetImage(ImageAsset.imageProfile),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                employeeName,
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),
              Text(
                position,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
