// import 'package:casino_app/Web/footer/footer.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import '../../../Const/color.dart';
// import '../../../Widgets/bar.dart';
// import '../popular_event/popular_event.dart';
// import '../popular_event/popular_event2.dart';

// class GameDetails extends StatefulWidget {
//   const GameDetails({super.key});

//   @override
//   State<GameDetails> createState() => _GameDetailsState();
// }

// class _GameDetailsState extends State<GameDetails>
//     with TickerProviderStateMixin {
//   String? _mySelection1;

//   List<Map<String, String>> myJson = [
//     {
//       'Duration': '0.0000',
//     },
//     {'Duration': '0.003'},
//     {'Duration': '0.005'},
//     {'Duration': '0.007'},
//     {'Duration': '1.00'},
//   ];
//   TextEditingController controller = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;

//     TabController tabController = TabController(length: 4, vsync: this);

//     return SafeArea(
//         child: Scaffold(
//       backgroundColor: primary,
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             const Bar(),
//             SizedBox(
//               height: 30.h,
//             ),
//             Column(
//               children: [
//                 SizedBox(
//                   height: 30.h,
//                 ),
//                 SizedBox(
//                   height: 30.h,
//                 )
//               ],
//             ),
//             SizedBox(
//               width: 10.w,
//             ),
//             Container(
//               height: 3200.h,
//               width: 290.w,
//               // color: Colors.amber,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   // FieldContainer(),
//                   SizedBox(
//                     height: 30.h,
//                   ),

//                   Padding(
//                     padding: EdgeInsets.only(left: 5.w),
//                     child: Container(
//                       width: 130.w,
//                       child: TabBar(
//                           unselectedLabelColor: Colors.white,
//                           // labelColor: Color(AppColors.primary),
//                           indicatorPadding: EdgeInsets.zero,
//                           indicatorWeight: 0,
//                           indicatorSize: TabBarIndicatorSize.tab,
//                           indicator: BoxDecoration(
//                               color: Color(0xff344452),
//                               borderRadius: BorderRadius.circular(28)),
//                           controller: tabController,
//                           tabs: [
//                             Container(
//                               height: 20,
//                               child: const Tab(
//                                 text: 'Lobby',
//                               ),
//                             ),
//                             const Tab(
//                               text: 'my Bets',
//                             ),
//                             const Tab(
//                               text: 'Favourites',
//                             ),
//                             const Tab(
//                               text: 'Live Events',
//                             ),
//                             const Tab(
//                               text: 'Starting Soon',
//                             ),
//                           ]),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 10.h,
//                   ),
//                   Padding(
//                     padding: EdgeInsets.symmetric(horizontal: 5.w),
//                     child: Row(
//                       children: [
//                         Container(
//                           height: 45.h,
//                           width: 280.w,
//                           decoration: BoxDecoration(
//                               border: Border.all(color: secondary, width: 1),
//                               borderRadius: BorderRadius.circular(12),
//                               color: secondary),
//                           child: DropdownButton<String>(
//                             dropdownColor: primary,
//                             icon: Padding(
//                               padding: EdgeInsets.only(right: 5.w),
//                               child: Icon(
//                                 Icons.keyboard_arrow_down_outlined,
//                                 size: 7.sp,
//                                 color: whiteColor,
//                               ),
//                             ),
//                             underline: const SizedBox(),
//                             isExpanded: true,
//                             hint: Row(
//                               children: [
//                                 // SizedBox(
//                                 //   width: 15.w,
//                                 // ),
//                                 Padding(
//                                   padding: EdgeInsets.only(top: 5.h, left: 5.w),
//                                   child: Row(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       Text('International',
//                                           style: TextStyle(
//                                               fontSize: 3.6.sp,
//                                               color: whiteColor,
//                                               fontWeight: FontWeight.bold)),
//                                     ],
//                                   ),
//                                 )
//                               ],
//                             ),
//                             value: _mySelection1,
//                             onChanged: (newValue) {
//                               setState(() {
//                                 _mySelection1 = newValue;
//                               });
//                             },
//                             items: myJson.map((Map map) {
//                               return DropdownMenuItem<String>(
//                                 value: map['Duration'].toString(),
//                                 child: Row(
//                                   children: [
//                                     SizedBox(
//                                       width: 5.w,
//                                     ),
//                                     Padding(
//                                       padding:
//                                           EdgeInsets.only(top: 10.h, left: 5.w),
//                                       child: Column(
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.start,
//                                         children: [
//                                           Text(
//                                             map['Duration'].toString(),
//                                             style: TextStyle(
//                                                 fontSize: 3.6.sp,
//                                                 fontWeight: FontWeight.bold,
//                                                 color: whiteColor),
//                                           ),
//                                         ],
//                                       ),
//                                     )
//                                   ],
//                                 ),
//                               );
//                             }).toList(),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   SizedBox(
//                     height: 10.h,
//                   ),
//                   // Padding(
//                   //   padding: EdgeInsets.symmetric(horizontal: 5.w),
//                   //   child: Container(
//                   //     height: 60.h,
//                   //     width: double.infinity,
//                   //     decoration: BoxDecoration(
//                   //         borderRadius: BorderRadius.circular(6),
//                   //         color: secondary),
//                   //     child: Center(),
//                   //   ),
//                   // ),

//                   SizedBox(
//                     height: 30.h,
//                   ),
//                   PopularEvent(
//                     width: 290.w,
//                     color: buttoncolor,
//                     heading: 'Premier League',
//                     pading: 100.w,
//                     endedtextcolor: primary,
//                     value: false,
//                     endedtext: 'Ended',
//                   ),
//                   SizedBox(
//                     height: 30.h,
//                   ),
//                   Padding(
//                     padding: EdgeInsets.symmetric(horizontal: 5.w),
//                     child: Row(
//                       children: [
//                         const Icon(
//                           Icons.local_fire_department_sharp,
//                           color: whiteColor,
//                         ),
//                         SizedBox(
//                           width: 2.w,
//                         ),
//                         Text('Popular Events',
//                             style: TextStyle(
//                                 fontSize: 3.sp,
//                                 color: whiteColor,
//                                 fontWeight: FontWeight.bold)),
//                       ],
//                     ),
//                   ),

//                   SizedBox(
//                     height: 30.h,
//                   ),
//                   PopularEvent(
//                     color: red,
//                     width: 290.w,
//                     heading: 'Premier League',
//                     pading: 100.w,
//                     endedtextcolor: whiteColor,
//                     value: true,
//                     endedtext: 'Live',
//                   ),
//                   SizedBox(
//                     height: 30.h,
//                   ),
//                   PopularEvent(
//                     width: 290.w,
//                     color: red,
//                     heading: 'Premier League',
//                     pading: 100.w,
//                     endedtextcolor: whiteColor,
//                     value: true,
//                     endedtext: 'Live',
//                   ),
//                   SizedBox(
//                     height: 30.h,
//                   ),
//                   PopularEvent(
//                     width: 290.w,
//                     color: red,
//                     heading: 'Premier League',
//                     pading: 100.w,
//                     endedtextcolor: whiteColor,
//                     value: true,
//                     endedtext: 'Live',
//                   ),
//                   SizedBox(
//                     height: 30.h,
//                   ),
//                   PopularEvent(
//                     width: 290.w,
//                     color: red,
//                     heading: 'Premier League',
//                     pading: 100.w,
//                     endedtextcolor: whiteColor,
//                     value: true,
//                     endedtext: 'Live',
//                   ),

//                   SizedBox(
//                     height: 30.h,
//                   ),
//                   PopularEvent2(
//                     width: 290.w,
//                     color: buttoncolor,
//                     heading: 'US open Men Singles',
//                     pading: 100.w,
//                     endedtextcolor: primary,
//                     endedtext: 'Ended',
//                     datevalue: true,
//                     iconvalue: true,
//                   ),

//                   SizedBox(
//                     height: 30.h,
//                   ),
//                   PopularEvent2(
//                     width: 290.w,
//                     color: buttoncolor,
//                     heading: 'US open Men Singles',
//                     pading: 100.w,
//                     endedtextcolor: primary,
//                     endedtext: 'Ended',
//                     datevalue: true,
//                     iconvalue: true,
//                   ),
//                   SizedBox(
//                     height: 30.h,
//                   ),
//                   PopularEvent2(
//                     width: 290.w,
//                     color: buttoncolor,
//                     heading: 'US open Men Singles',
//                     pading: 100.w,
//                     endedtextcolor: primary,
//                     endedtext: 'Ended',
//                     datevalue: true,
//                     iconvalue: true,
//                   ),
//                   SizedBox(
//                     height: 30.h,
//                   ),
//                   PopularEvent2(
//                     width: 290.w,
//                     color: buttoncolor,
//                     heading: 'US open Men Singles',
//                     pading: 100.w,
//                     endedtextcolor: primary,
//                     endedtext: 'Ended',
//                     datevalue: true,
//                     iconvalue: true,
//                   ),

//                   // Container(
//                   //   height: 380.h,
//                   //   width: 270.w,
//                   //   decoration: BoxDecoration(
//                   //     borderRadius: BorderRadius.circular(12),
//                   //     color: secondary,
//                   //   ),
//                   // )
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: 550.h,
//             ),
//             const Footer()
//           ],
//         ),
//       ),
//     ));
//   }
// }

// Widget menutext(IconData icon, String text) {
//   return Padding(
//       padding: EdgeInsets.only(left: 5.w),
//       child: Row(
//         children: [
//           Icon(
//             icon,
//             color: whiteColor,
//             size: 17,
//           ),
//           SizedBox(
//             width: 4.w,
//           ),
//           Text(
//             text,
//             style: TextStyle(
//                 fontSize: 3.5.sp,
//                 color: whiteColor,
//                 fontWeight: FontWeight.bold),
//           ),
//         ],
//       ));
// }

// Widget navigatemenutext(IconData icon, String text) {
//   return Padding(
//       padding: EdgeInsets.only(left: 4.w),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Row(
//             children: [
//               const Icon(
//                 Icons.card_giftcard,
//                 color: whiteColor,
//                 size: 15,
//               ),
//               SizedBox(
//                 width: 4.w,
//               ),
//               Text(
//                 text,
//                 style: TextStyle(
//                     fontSize: 3.5.sp,
//                     color: whiteColor,
//                     fontWeight: FontWeight.bold),
//               ),
//             ],
//           ),
//           Container(
//             height: 25.h,
//             width: 20.w,
//             decoration: const BoxDecoration(
//                 shape: BoxShape.circle, color: Color(0xff13212d)),
//             child: Center(
//               child: Icon(
//                 Icons.arrow_forward_ios,
//                 color: whiteColor,
//                 size: 3.sp,
//               ),
//             ),
//           )
//         ],
//       ));
// }

// Widget containerr(String text1, String text2) {
//   return Container(
//     height: 60.h,
//     width: 40.w,
//     decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10), color: buttoncolor),
//     child: Padding(
//       padding: EdgeInsets.only(top: 10.h, left: 5.w),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             text1,
//             style: TextStyle(
//               fontSize: 3.5.sp,
//               color: whiteColor,
//             ),
//           ),
//           SizedBox(
//             height: 8.h,
//           ),
//           Text(
//             text2,
//             style: TextStyle(
//               fontSize: 3.4.sp,
//               color: whiteColor,
//             ),
//           ),
//         ],
//       ),
//     ),
//   );
// }
