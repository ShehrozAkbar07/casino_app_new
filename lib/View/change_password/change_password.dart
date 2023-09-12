import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../AppRoutes/routes.dart';
import '../../Const/color.dart';
import '../../Const/const.dart';
import '../../Widgets/custom_buton.dart';
import '../../Widgets/app_bar.dart';
import '../../Widgets/custom_text_field.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  bool obsecure = false;
  bool obsecure1 = false;

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
                      height: 40.h,
                    ),
                    Text(
                      "Create New Password",
                      style: TextStyle(
                          fontSize: 23.sp,
                          color: whiteColor,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20.h,
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
                      ab: obsecure,
                      controller: pass,
                      text: 'Type password',
                      suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              obsecure = !obsecure;
                            });
                          },
                          child: obsecure
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
                      ab: obsecure1,
                      controller: email,
                      text: 'Re-type password',
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
                      height: 350.h,
                    ),
                    InkWell(
                      onTap: () {
                        Get.toNamed(AppRoutes.passwordchanged);
                      },
                      child: const Button(
                        button_text: 'Submit',
                        colors: buttoncolor,
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
