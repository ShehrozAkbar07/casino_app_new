import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../AppRoutes/routes.dart';
import '../../Const/color.dart';
import '../../Const/const.dart';
import '../../Widgets/custom_buton.dart';
import '../../Widgets/app_bar.dart';

class PasswordChanged extends StatefulWidget {
  const PasswordChanged({super.key});

  @override
  State<PasswordChanged> createState() => _PasswordChangedState();
}

class _PasswordChangedState extends State<PasswordChanged> {
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
              text: 'Password Changed',
            ),
            Flexible(
                child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: padding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 140.h,
                    ),
                    Center(
                      child: Container(
                        height: 110.h,
                        width: 110.w,
                        decoration: const BoxDecoration(
                            color: buttoncolor, shape: BoxShape.circle),
                        child: const Center(
                            child: Icon(
                          Icons.check,
                          color: primary,
                          size: 56,
                        )),
                      ),
                    ),
                    SizedBox(
                      height: 120.h,
                    ),
                    Center(
                      child: Text(
                        "Password Changed!",
                        style: TextStyle(
                          fontSize: 27.sp,
                          color: whiteColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    Center(
                      child: Text(
                        "Your Password has been changed successfully.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18.sp,
                          color: whiteColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 130.h,
                    ),
                    InkWell(
                      onTap: () {
                        Get.toNamed(AppRoutes.login);
                      },
                      child: const Button(
                        button_text: 'Back To Sign In',
                        colors: buttoncolor,
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        // Get.toNamed(AppRoutes.bottom_navi);
                        // var sp = await SharedPreferences.getInstance();
                        // sp.setBool(SplashScreenState.KEYPasswordChanged, true);
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
