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

class EditPersonalData extends StatefulWidget {
  const EditPersonalData({super.key});

  @override
  State<EditPersonalData> createState() => _EditPersonalDataState();
}

class _EditPersonalDataState extends State<EditPersonalData> {
  TextEditingController email = TextEditingController();
  TextEditingController fullname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController mobile = TextEditingController();
  TextEditingController dob = TextEditingController();
  TextEditingController pob = TextEditingController();
  TextEditingController religion = TextEditingController();
  TextEditingController city = TextEditingController();

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
              text: 'EditPersonalData',
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
                      'Personal Profile',
                      style: TextStyle(
                          fontSize: 25.sp,
                          color: whiteColor,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      "Once saved, you can only edit the information by contacting Customer Support",
                      style: TextStyle(
                        fontSize: 15.sp,
                        color: whiteColor,
                      ),
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
                      text: 'Mobile Number',
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
                      height: 19.h,
                    ),
                    CustomTextFieldd(
                      numbertyppe: false,
                      ab: false,
                      controller: city,
                      text: 'Account Number',
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: const Button(
                        button_text: 'Continue',
                        colors: buttoncolor,
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    // InkWell(
                    //   onTap: () async {
                    //     // Get.toNamed(AppRoutes.bottom_navi);
                    //     // var sp = await SharedPreferences.getInstance();
                    //     // sp.setBool(SplashScreenState.KEYEditPersonalData, true);
                    //   },
                    //   child: const Button(
                    //     colors: primary,
                    //     button_text: 'Sign In',
                    //   ),
                    // ),
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
