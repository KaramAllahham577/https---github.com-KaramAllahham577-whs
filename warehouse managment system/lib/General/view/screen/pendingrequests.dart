import 'package:flutter/material.dart';
import 'package:untitled3/General/view/screen/pending_request_card.dart';

import '../../../Keeper/views1/widgets/shipment_card.dart';



class PendingRequests extends StatelessWidget {
  PendingRequests({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff161a1d),
      appBar: AppBar(
        elevation: 20,
        backgroundColor: const Color(0xff161a1d),
        title: const Center(
          child: Text(
            'Pending Requests ',
            style: TextStyle(
              fontFamily: "DM Sans",
              fontWeight: FontWeight.w500,
              fontSize: 25,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child:ListView.separated(
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) => Pending_Request_Card(),
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 7.5,
                    ),
                    itemCount: 10))

            ,

    );
  }
}


