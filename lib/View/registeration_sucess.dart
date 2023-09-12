import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Const/color.dart';
import '../../Const/const.dart';
import '../../Widgets/custom_buton.dart';
import '../../Widgets/app_bar.dart';

class RegisterationSucess extends StatefulWidget {
  const RegisterationSucess({super.key});

  @override
  State<RegisterationSucess> createState() => _RegisterationSucessState();
}

class _RegisterationSucessState extends State<RegisterationSucess> {
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
              text: 'Registeration Sucess',
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
                        "Registration Success!",
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
                        "Your Account has been successfully created.",
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
                    const Button(
                      button_text: 'Continue To Home',
                      colors: buttoncolor,
                    ),
                    InkWell(
                      onTap: () async {
                        // Get.toNamed(AppRoutes.bottom_navi);
                        // var sp = await SharedPreferences.getInstance();
                        // sp.setBool(SplashScreenState.KEYRegisterationSucess, true);
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
