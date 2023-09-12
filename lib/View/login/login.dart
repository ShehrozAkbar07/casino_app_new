// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';

// import '../../AppRoutes/routes.dart';
// import '../../Const/color.dart';
// import '../../Const/const.dart';
// import '../../Widgets/custom_buton.dart';
// import '../../Widgets/app_bar.dart';
// import '../../Widgets/custom_text_field.dart';

// class Login extends StatefulWidget {
//   const Login({super.key});

//   @override
//   State<Login> createState() => _LoginState();
// }

// class _LoginState extends State<Login> {
//   TextEditingController email = TextEditingController();
//   TextEditingController pass = TextEditingController();

//   bool obsecure = false;
//   bool obsecure2 = false;

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: primary,
//         body: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Appbarr(
//               iconCross: false,
//               text: 'Sign in',
//             ),
//             Flexible(
//                 child: SingleChildScrollView(
//               child: Padding(
//                 padding: EdgeInsets.symmetric(horizontal: padding),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     SizedBox(
//                       height: 40.h,
//                     ),
//                     Row(
//                       children: [
//                         Text(
//                           "Hi There!",
//                           style: TextStyle(
//                               fontSize: 25.sp,
//                               color: whiteColor,
//                               fontWeight: FontWeight.bold),
//                         ),
//                         SizedBox(
//                           width: 5.w,
//                         ),
//                         Image.asset(
//                           'assets/images/wave.png',
//                           height: 30.h,
//                           width: 50.w,
//                         )
//                       ],
//                     ),
//                     SizedBox(
//                       height: 12.h,
//                     ),
//                     Text(
//                       "Welcome back, Sign in to your account",
//                       style: TextStyle(
//                         fontSize: 17.sp,
//                         color: whiteColor,
//                       ),
//                     ),
//                     SizedBox(
//                       height: 30.h,
//                     ),
//                     CustomTextFieldd(
//                       numbertyppe: false,
//                       ab: false,
//                       controller: email,
//                       text: 'Email',
//                     ),
//                     SizedBox(
//                       height: 19.h,
//                     ),
//                     CustomTextFieldd(
//                       numbertyppe: false,
//                       ab: obsecure,
//                       controller: pass,
//                       text: 'Password',
//                       suffixIcon: InkWell(
//                           onTap: () {
//                             setState(() {
//                               obsecure = !obsecure;
//                             });
//                           },
//                           child: obsecure
//                               ? const Icon(
//                                   Icons.visibility_off_outlined,
//                                   color: whiteColor,
//                                 )
//                               : const Icon(
//                                   Icons.visibility_outlined,
//                                   color: whiteColor,
//                                 )),
//                     ),
//                     SizedBox(
//                       height: 18.h,
//                     ),
//                     InkWell(
//                       onTap: () {
//                         Get.toNamed(AppRoutes.passrecovery);
//                       },
//                       child: Text(
//                         "Forgot Password?",
//                         style: TextStyle(
//                           fontSize: 16.sp,
//                           color: buttoncolor,
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 30.h,
//                     ),
//                     InkWell(
//                       onTap: () {
//                         Get.toNamed(AppRoutes.navigationbar);
//                       },
//                       child: const Button(
//                         button_text: 'Sign In',
//                         colors: buttoncolor,
//                       ),
//                     ),
//                     SizedBox(
//                       height: 20.h,
//                     ),
//                     Padding(
//                       padding: EdgeInsets.only(left: 50.w),
//                       child: Row(
//                         children: [
//                           Text(
//                             "Don’t have an account?",
//                             style: TextStyle(
//                               fontSize: 16.sp,
//                               color: whiteColor,
//                             ),
//                           ),
//                           SizedBox(
//                             width: 5.w,
//                           ),
//                           InkWell(
//                             onTap: () {
//                               Get.toNamed(AppRoutes.register);
//                             },
//                             child: Text(
//                               "Sign Up",
//                               style: TextStyle(
//                                 fontSize: 16.sp,
//                                 color: buttoncolor,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     SizedBox(
//                       height: 20.h,
//                     ),
//                     InkWell(
//                       onTap: () async {
//                         // Get.toNamed(AppRoutes.home);

//                         // Get.toNamed(AppRoutes.bottom_navi);
//                         // var sp = await SharedPreferences.getInstance();
//                         // sp.setBool(SplashScreenState.KEYLOGIN, true);
//                       },
//                       child: const Button(
//                         colors: primary,
//                         button_text: 'Sign In',
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ))
//           ],
//         ),
//       ),
//     );
//   }
// }
