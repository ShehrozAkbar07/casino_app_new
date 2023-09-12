// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';

// import '../../AppRoutes/routes.dart';
// import '../../Const/color.dart';
// import '../../Const/const.dart';
// import '../../dimesnion/dimension.dart';

// class Screen1 extends StatefulWidget {
//   final Function List
//   Screen1({
//     super.key,
//     required this.Widgett, required this.List,
//   });

//   @override
//   State<Screen1> createState() => _Screen1State();
// }

// class _Screen1State extends State<Screen1> {
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Stack(
//       children: [
//         Align(
//           alignment: Alignment.bottomCenter,
//           child: Container(
//             color: Colors.transparent,
//             height: Dimens.height / 9.1,
//             child: ListView(
//               physics: NeverScrollableScrollPhysics(),
//               children: [
//                 SizedBox(
//                   height: 2.h,
//                 ),
//                 SizedBox(
//                   height: Dimens.height1,
//                 ),
//                 Padding(
//                   padding: EdgeInsets.only(top: size.height * 0.02),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: widget.Widgett();
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//         Padding(
//           padding: EdgeInsets.only(
//             top: size.height * 0.03,
//           ),
//           child: Align(
//               alignment: Alignment.center,
//               child: Padding(
//                 padding: EdgeInsets.symmetric(horizontal: padding),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Align(
//                       alignment: Alignment.topRight,
//                       child: InkWell(
//                         onTap: () {
//                           Get.toNamed(AppRoutes.login);
//                         },
//                         child: Text(
//                           'Skip',
//                           style: TextStyle(
//                               fontWeight: FontWeight.w400,
//                               color: primary,
//                               fontSize: 18.sp),
//                         ),
//                       ),
//                     ),
//                     Align(
//                       alignment: Alignment.center,
//                       child: Container(
//                         height: 300.h,
//                         width: 270.w,
//                         // color: black,
//                         child: Image.asset('assets/images/splash1.png'),
//                       ),
//                     ),
//                     Align(
//                       alignment: Alignment.center,
//                       child: RichText(
//                         text: TextSpan(
//                             text: 'Unleash Your\nFinancial Freedom\nWith',
//                             style: TextStyle(
//                                 wordSpacing: 3,
//                                 height: 1.3,
//                                 color: black,
//                                 fontSize: 31.sp,
//                                 fontWeight: FontWeight.bold),
//                             children: [
//                               TextSpan(
//                                 text: ' Kwenu',
//                                 style: TextStyle(
//                                     height: 1.6,
//                                     wordSpacing: 2,
//                                     color: primary,
//                                     fontSize: 31.sp,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                             ]),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 30.h,
//                     ),
//                     Align(
//                       alignment: Alignment.center,
//                       child: Text(
//                         "We are here to help you track and deal\n with speeding up your transaction.",
//                         style: TextStyle(
//                           fontSize: 18.sp,
//                           color: grey,
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//               )),
//         ),
//         // Align(
//         //   alignment: Alignment.bottomCenter,
//         //   child: Positioned(
//         //     top: 200,
//         //     child:
//         //   ),
//         // ),
//       ],
//     );
//   }
// }
