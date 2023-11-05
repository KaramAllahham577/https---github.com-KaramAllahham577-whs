import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled3/Keeper/view/screen/storage_location/SecondryStoringLocations.dart';

import '../../view/widget/storage_location/storingLocationsCard.dart';

class StoringLocations extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF161A1D),
      appBar: AppBar(
        backgroundColor: Color(0xFF161A1D),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30,
          ), onPressed: () {  },

        ),
        title: Text(
          'Storing Locations',
          style: TextStyle(
            fontFamily: 'Outfit',
            color: Colors.white,
            fontSize: 22,
          ),
        ),
        centerTitle: true,
        elevation: 2,
      ),
      body: SafeArea(
        top: true,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: 411,
              height: 50,
              decoration: const BoxDecoration(
                color: Color(0xFF161A1D),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Opacity(
                    opacity: 0,
                    child: Container(
                      width: 90,
                      height: 100,
                      decoration: const BoxDecoration(
                        color: Colors.transparent, // Change to your color
                      ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        decoration: const BoxDecoration(
                          color: Color(0xFF6A040F),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                    child: Text(
                      'Unavailable',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Readex Pro',
                          fontWeight: FontWeight.w300,
                          fontSize: 20
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: 0,
                    child: Container(
                      width: 20,
                      height: 100,
                      decoration: const BoxDecoration(
                        color: Colors.transparent, // Change to your color
                      ),
                    ),
                  ),
                  Container(
                    width: 20,
                    height: 20,
                    decoration: const BoxDecoration(
                      color: Color(0xFF004834),
                      shape: BoxShape.circle,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                    child: Text(
                      'available',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Readex Pro',
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: 496,
                decoration: BoxDecoration(
                  color: Color(0xFF161A1D),
                ),
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  itemCount: 2, // Replace with your actual item count
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: (){
                        Get.to(SecondaryStoringLocations());
                      },
                      child: StoringLocationsCard(
                        name: index == 0 ? 'A' : 'B',
                        totalQuantity: 15000, // Replace with actual total quantity
                        borderColor: index == 0 ? Color(0xFF6A040F) : Color(0xFF004834),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}