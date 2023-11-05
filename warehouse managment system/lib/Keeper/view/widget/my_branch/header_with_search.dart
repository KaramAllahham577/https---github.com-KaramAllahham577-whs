// import 'package:flutter/material.dart';
//
// import '../../../core/constant/app_color.dart';
// import '../../screen/categories/search_categories_general.dart';
//
// class HeaderWithSearch extends StatelessWidget {
//   const HeaderWithSearch({
//     Key? key,
//     required this.size,
//   }) : super(key: key);
//
//   final Size size;
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: size.height * 0.2,
//       child: Stack(
//         children: [
//           Container(
//             height: size.height * 0.2 - 27,
//             decoration: const BoxDecoration(
//                 borderRadius: BorderRadius.only(
//                     bottomLeft: Radius.circular(36),
//                     bottomRight: Radius.circular(36)),
//                 color: Color(0xff6a040f)),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Column(
//                       children: const [
//                         Text(
//                           '10%',
//                           style: TextStyle(fontSize: 24),
//                         ),
//                         Text(
//                           'profit',
//                           style: TextStyle(fontSize: 16, color: Colors.white),
//                         ),
//                       ],
//                     ),
//                     Column(
//                       children: const [
//                         Text(
//                           '5%',
//                           style: TextStyle(fontSize: 24),
//                         ),
//                         Text(
//                           'losses',
//                           style: TextStyle(fontSize: 16, color: Colors.white),
//                         ),
//                       ],
//                     ),
//                     Column(
//                       children: const [
//                         Text(
//                           '2',
//                           style: TextStyle(fontSize: 24),
//                         ),
//                         Text(
//                           'free space',
//                           style: TextStyle(fontSize: 16, color: Colors.white),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           Positioned(
//               bottom: 0,
//               right: 0,
//               left: 0,
//               child: Container(
//                   alignment: Alignment.center,
//                   height: 54,
//                   margin: const EdgeInsets.symmetric(horizontal: 20),
//                   padding: const EdgeInsets.symmetric(horizontal: 20),
//                   decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(50),
//                       boxShadow: [
//                         BoxShadow(
//                             offset: const Offset(0, 10),
//                             blurRadius: 50,
//                             color: AppColor.color3.withOpacity(0.40)),
//                       ]),
//                   child: Stack(
//                     children: [
//                       TextField(
//                         onChanged: (value) {
//                           print(value);
//                         },
//                         decoration: InputDecoration(
//                           enabledBorder: InputBorder.none,
//                           focusedBorder: InputBorder.none,
//                           hintText: "Search",
//                           hintStyle: TextStyle(
//                               color: AppColor.color3.withOpacity(0.5)),
//                           suffixIcon: const Icon(
//                             Icons.search_rounded,
//                             color: AppColor.color3,
//                           ),
//                         ),
//                       ),
//                       InkWell(
//                         onTap: () {
//                           showSearch(
//                               context: context,
//                               delegate: CustomSearchDelegate());
//                         },
//                       )
//                     ],
//                   )))
//         ],
//       ),
//     );
//   }
// }
