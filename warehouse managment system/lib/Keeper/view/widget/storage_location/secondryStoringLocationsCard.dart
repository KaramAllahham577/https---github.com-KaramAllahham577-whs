import 'package:flutter/material.dart';

class SecondaryStoringLocationsCard extends StatelessWidget {
  final String name;
  final int totalQuantity;
  final int availableQuantity;
  final int unavailableQuantity;

  const SecondaryStoringLocationsCard({super.key,
    required this.name,
    required this.totalQuantity,
    required this.availableQuantity,
    required this.unavailableQuantity,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
      child: Container(
        width: 100,
        height: 150,
        decoration: BoxDecoration(
          color: const Color(0xFF161A1D),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color:  Color(0xFF004834),
            width: 2,
          ),
        ),
        child: Stack(
          children: [
            Align(
              alignment: const AlignmentDirectional(-1, 0),
              child: Container(
                width: 100,
                height: 150,
                decoration: BoxDecoration(
                  color: const Color(0xFFF4F4F8),
                  borderRadius: BorderRadius.circular(8),
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    color:  Color(0xFF004834),
                    width: 3,
                  ),
                ),
                child: Align(
                  alignment: const AlignmentDirectional(0, 0),
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontFamily: 'Readex Pro',
                      fontSize: 40,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(1, 0),
              child: Container(
                width: 296,
                height: 150,
                margin: const EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  color: const Color(0xFF161A1D),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(
                      height: 5,
                    ),

                    QuantityRow(
                      label: 'Available Quantity :',
                      quantity: availableQuantity,
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class QuantityRow extends StatelessWidget {
  final String label;
  final int quantity;

  const QuantityRow({
    required this.label,
    required this.quantity,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 45,
      decoration: BoxDecoration(
        color: const Color(0xFF161A1D),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: AlignmentDirectional(-1, 0),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
              child: Text(
                label,
                style: const TextStyle(
                  fontFamily: "DM Sans",
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(1, 0),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(2.5, 0, 0, 0),
              child: Text(
                quantity.toString(),
                style: const TextStyle(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}