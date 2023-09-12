import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../AppRoutes/routes.dart';
import '../../Const/color.dart';
import '../../Const/const.dart';
import '../../Widgets/custom_buton.dart';
import '../../Widgets/app_bar.dart';
import '../../Widgets/custom_text_field.dart';

class PasswordRecovery extends StatefulWidget {
  const PasswordRecovery({super.key});

  @override
  State<PasswordRecovery> createState() => _PasswordRecoveryState();
}

class _PasswordRecoveryState extends State<PasswordRecovery> {
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  bool obsecure = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: primary,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Appbarr(
              iconCross: false,
              text: 'Reset Password',
            ),
            Flexible(
                child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: padding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 26.h,
                    ),
                    Text(
                      "Create New Password",
                      style: TextStyle(
                          fontSize: 25.sp,
                          color: whiteColor,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      "Setup your password so you can Login and access Crypto Sport ",
                      style: TextStyle(
                        fontSize: 17.sp,
                        color: whiteColor,
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    CustomTextFieldd(
                      numbertyppe: false,
                      ab: false,
                      controller: email,
                      text: 'Enter your Email Address',
                    ),
                    SizedBox(
                      height: 19.h,
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    InkWell(
                      onTap: () {
                        Get.toNamed(AppRoutes.otpverification);
                      },
                      child: const Button(
                        button_text: 'Get Otp',
                        colors: buttoncolor,
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    InkWell(
                      onTap: () async {
                        // Get.toNamed(AppRoutes.bottom_navi);
                        // var sp = await SharedPreferences.getInstance();
                        // sp.setBool(SplashScreenState.KEYPasswordRecovery, true);
                      },
                      child: const Button(
                        colors: primary,
                        button_text: 'Sign In',
                      ),
                    ),
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}

Widget SocialButton(image) {
  return Container(
    height: 55.h,
    width: 160.w,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(11),
        border: Border.all(color: Colors.grey, width: 1)),
    child: Center(
      child: Container(
        height: 25.h,
        width: 50.w,
        child: Image.asset(image),
      ),
    ),
  );
}
