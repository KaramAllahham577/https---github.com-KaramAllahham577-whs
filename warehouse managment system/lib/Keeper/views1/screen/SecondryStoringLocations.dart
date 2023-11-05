import 'package:flutter/material.dart';

import '../../view/widget/storage_location/secondryStoringLocationsCard.dart';



class SecondaryStoringLocations extends StatelessWidget {
  const SecondaryStoringLocations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        backgroundColor: const Color(0xFF161A1D),
        appBar: AppBar(
          backgroundColor: const Color(0xFF161A1D),
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () async {
              Navigator.pop(context);
            },
          ),
          title: const Text(
            'Location A',
            style: TextStyle(
              fontFamily: "DM Sans",
              fontWeight: FontWeight.w500,
              fontSize: 25,
              color: Colors.white,
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
                          fontSize: 20,
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
                        'Available',
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
              Container(
                width: 496,
                height: 622,
                decoration: const BoxDecoration(
                  color: Color(0xFF161A1D),
                ),
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: 2, // Number of items in the list
                  itemBuilder: (context, index) {
                    return SecondaryStoringLocationsCard(
                      name: index == 0 ? 'A-1' : 'A-2',
                      totalQuantity: 15000,
                      availableQuantity: 15000,
                      unavailableQuantity: 15000,
                    );
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