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
import '../../Widgets/otp_box.dart';

class OtpVerification extends StatefulWidget {
  const OtpVerification({super.key});

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
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
              text: 'OTP Verification',
            ),
            Flexible(
                child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: padding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 40.h,
                    ),
                    Center(
                      child: Text(
                        "OTP Verification",
                        style: TextStyle(
                            fontSize: 25.sp,
                            color: whiteColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Center(
                      child: Text(
                        "please enter otp code sent to \nyou",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 17.sp,
                          color: whiteColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                    Center(
                      child: Container(width: 300.w, child: const OTPBox()),
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 100.w),
                      child: Row(
                        children: [
                          Text(
                            "Don’t get code?",
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: whiteColor,
                            ),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(
                            "Resend",
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: buttoncolor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                    InkWell(
                      onTap: () {
                        Get.toNamed(AppRoutes.changepassword);
                      },
                      child: const Button(
                        button_text: 'Verify',
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
                        // sp.setBool(SplashScreenState.KEYOtpVerification, true);
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
