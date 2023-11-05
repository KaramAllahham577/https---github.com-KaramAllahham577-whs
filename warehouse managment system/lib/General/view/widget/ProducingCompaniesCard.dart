import 'package:flutter/material.dart';

class ProducingCompaniesCard extends StatelessWidget {


  const ProducingCompaniesCard({super.key, required this.name, required this.code}

  );
final String name;
final String code;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 7.5, 5, 10),
      child: Container(
        width: 100,
        height: 130,
        decoration: BoxDecoration(
          color: const Color(0xFF161A1D),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color:  const Color(0xFF6A040F),
            width: 2,
          ),
        ),
        child: Container(
          width: 1.5,
          child: Stack(
            children: [
              Align(
                alignment: const AlignmentDirectional(0, -1.03),
                child: Container(
                  width: 445,
                  height: 80,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF4F4F8),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color:  const Color(0xFF6A040F),
                      width: 3,
                    ),
                  ),
                  child:  Align(
                    alignment: const AlignmentDirectional(0, 0),
                    child: Text(
                      'Company name:$name',
                      style: const TextStyle(
                        fontFamily: 'Readex Pro',
                        fontSize: 25,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.06, 0.96),
                child: Container(
                  width: 398,
                  height: 43,
                  decoration: BoxDecoration(
                    color: const Color(0xFF161A1D),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child:  Align(
                    alignment: const AlignmentDirectional(0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment:
                      MainAxisAlignment.center,
                      children:  [
                      const Align(
                          alignment:
                          AlignmentDirectional(-1, 0),
                          child: Padding(
                            padding: EdgeInsetsDirectional
                                .fromSTEB(5, 0, 0, 0),
                            child: Text(
                              'Company Code :',
                              style: TextStyle(
                                fontFamily: "DM Sans",
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional
                              .fromSTEB(2.5, 0, 0, 0),
                          child: Text(
                            code,
                            style:const TextStyle(
                              fontFamily: 'Outfit',
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}