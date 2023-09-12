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

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController fullname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController mobile = TextEditingController();
  TextEditingController retypepass = TextEditingController();
  TextEditingController dob = TextEditingController();
  TextEditingController pob = TextEditingController();
  TextEditingController religion = TextEditingController();
  TextEditingController city = TextEditingController();

  bool obsecure1 = false;
  bool obsecure2 = false;

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
              text: 'Register',
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
                    Row(
                      children: [
                        RichText(
                          text: TextSpan(
                              text: 'Create a',
                              style: TextStyle(
                                  fontSize: 25.sp,
                                  color: whiteColor,
                                  fontWeight: FontWeight.bold),
                              children: [
                                TextSpan(
                                  text: '  Crypto Sport',
                                  style: TextStyle(
                                      fontSize: 25.sp,
                                      color: buttoncolor,
                                      fontWeight: FontWeight.bold),
                                ),
                              ]),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      "account",
                      style: TextStyle(
                          fontSize: 25.sp,
                          color: whiteColor,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    CustomTextFieldd(
                      numbertyppe: false,
                      ab: false,
                      controller: fullname,
                      text: 'Full Name',
                    ),
                    SizedBox(
                      height: 19.h,
                    ),
                    CustomTextFieldd(
                      numbertyppe: false,
                      ab: false,
                      controller: lastname,
                      text: 'Last Name',
                    ),
                    SizedBox(
                      height: 19.h,
                    ),
                    CustomTextFieldd(
                      numbertyppe: false,
                      ab: false,
                      controller: mobile,
                      text: 'Enter Mobile Number',
                    ),
                    SizedBox(
                      height: 19.h,
                    ),
                    CustomTextFieldd(
                      numbertyppe: false,
                      ab: obsecure1,
                      controller: pass,
                      text: 'Password',
                      suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              obsecure1 = !obsecure1;
                            });
                          },
                          child: obsecure1
                              ? const Icon(
                                  Icons.visibility_off_outlined,
                                  color: whiteColor,
                                )
                              : const Icon(
                                  Icons.visibility_outlined,
                                  color: whiteColor,
                                )),
                    ),
                    SizedBox(
                      height: 19.h,
                    ),
                    CustomTextFieldd(
                      numbertyppe: false,
                      ab: obsecure2,
                      controller: pass,
                      text: 'Re-type password',
                      suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              obsecure2 = !obsecure2;
                            });
                          },
                          child: obsecure2
                              ? const Icon(
                                  Icons.visibility_off_outlined,
                                  color: whiteColor,
                                )
                              : const Icon(
                                  Icons.visibility_outlined,
                                  color: whiteColor,
                                )),
                    ),
                    SizedBox(
                      height: 19.h,
                    ),
                    CustomTextFieldd(
                      numbertyppe: false,
                      ab: false,
                      controller: dob,
                      text: 'Date of birth',
                    ),
                    SizedBox(
                      height: 19.h,
                    ),
                    CustomTextFieldd(
                      numbertyppe: false,
                      ab: false,
                      controller: pob,
                      text: 'Place of birth',
                    ),
                    SizedBox(
                      height: 19.h,
                    ),
                    CustomTextFieldd(
                      numbertyppe: false,
                      ab: false,
                      controller: religion,
                      text: 'Religion',
                    ),
                    SizedBox(
                      height: 19.h,
                    ),
                    CustomTextFieldd(
                      numbertyppe: false,
                      ab: false,
                      controller: city,
                      text: 'City',
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    InkWell(
                      onTap: () {
                        Get.toNamed(AppRoutes.login);
                      },
                      child: const Button(
                        button_text: 'Continue',
                        colors: buttoncolor,
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 50.w),
                      child: Row(
                        children: [
                          Text(
                            "Already have an account?",
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: whiteColor,
                            ),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          InkWell(
                            onTap: () {
                              Get.toNamed(AppRoutes.login);
                            },
                            child: Text(
                              "Sign In",
                              style: TextStyle(
                                fontSize: 16.sp,
                                color: buttoncolor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    InkWell(
                      onTap: () async {
                        // Get.toNamed(AppRoutes.bottom_navi);
                        // var sp = await SharedPreferences.getInstance();
                        // sp.setBool(SplashScreenState.KEYRegister, true);
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
