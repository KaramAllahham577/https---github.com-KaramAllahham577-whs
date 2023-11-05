import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/model/companies/show_conpanies_model.dart';


class ProducingCompaniesDetails extends StatelessWidget {
   ProducingCompaniesDetails ({super.key, required this.company});
ShowCompaniesModel company= ShowCompaniesModel();


  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width; //411
    double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xff161a1d),
      appBar: AppBar(
        elevation: 20,
        backgroundColor: const Color(0xff161a1d),
        title: const Center(
          child: Text(
            'Company Name ',
            style: TextStyle(
              fontFamily: "DM Sans",
              fontWeight: FontWeight.w500,
              fontSize: 25,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 7.5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.025),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 2, color: const Color(0xff6a040f)),
                    ),
                    width: 130,
                    height: 40,
                    child:  Center(
                      child: Text(
                        textAlign: TextAlign.center,
                        ' Company code : ${company.companyCode} ',
                        style: TextStyle(
                          fontFamily: "DM Sans",
                          fontWeight: FontWeight.w500,
                          fontSize: 22,
                          color: Color(0xffadb5bd),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),

              ],
            ),
          ),
         const SizedBox(height: 10,),
          Container(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.025),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 2, color: const Color(0xff6a040f)),
            ),
            width: 390,
            height: 40,
            child:  Center(
              child: Text(
                ' Phone Number : ${company.phoneNumber} ',
                style: TextStyle(
                  fontFamily: "DM Sans",
                  fontWeight: FontWeight.w500,
                  fontSize: 22,
                  color: Color(0xffadb5bd),
                ),
              ),
            ),
          ),


          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Container(
                  width: 120,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.025),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: const Color(0xff6a040f), width: 2),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 5,),
                      Container(
                        width: 400,
                        height: 30,
                        child: const Text(
                          'Email :',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: "DM Sans",
                            fontWeight: FontWeight.w500,
                            fontSize: 22.5,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children:  [
                                Center(
                                  child: Text(
                                    company.email!,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: "DM Sans",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 22.5,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),

            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const SizedBox(
                width: 10,
              ),

              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.025),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 2, color: const Color(0xff6a040f)),
                  ),
                  width: 130,
                  height: 40,
                  child:  Center(
                    child: Text(
                      textAlign: TextAlign.center,
                      ' Company Register : ${company.companyRegister} ',
                      style: TextStyle(
                        fontFamily: "DM Sans",
                        fontWeight: FontWeight.w500,
                        fontSize: 22,
                        color: Color(0xffadb5bd),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
         const SizedBox(height: 10,),
          Row(
            children: [
              const SizedBox(
                width: 10,
              ),

              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.025),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 2, color: const Color(0xff6a040f)),
                  ),
                  width: 130,
                  height: 40,
                  child:  Center(
                    child: Text(
                      textAlign: TextAlign.center,
                      ' Industry Register : ${company.industryRegister} ',
                      style: TextStyle(
                        fontFamily: "DM Sans",
                        fontWeight: FontWeight.w500,
                        fontSize: 22,
                        color: Color(0xffadb5bd),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
          const SizedBox(height: 10,),

          Row(
            children: [
              const SizedBox(
                width: 10,
              ),


              const SizedBox(
                width: 10,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),

        ],
      ),
    );
  }
}

Widget line() => const DottedLine(
      direction: Axis.horizontal,
      lineLength: 68,
      lineThickness: 7.5,
      dashLength: 5.0,
      dashColor: Color(0xffadb5bd),
      dashGapLength: 4,
      dashRadius: 5,
    );
