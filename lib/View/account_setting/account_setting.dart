import 'package:casino_app/Const/color.dart';
import 'package:casino_app/Const/const.dart';
import 'package:casino_app/Widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../AppRoutes/routes.dart';

class AccountSetting extends StatefulWidget {
  const AccountSetting({super.key});

  @override
  State<AccountSetting> createState() => _AccountSettingState();
}

class _AccountSettingState extends State<AccountSetting> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: primary,
      body: Column(
        children: [
          Appbarr(
            text: 'Account Setting',
            iconCross: true,
          ),
          Flexible(
              child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: padding),
                  child: Container(
                    height: 150.h,
                    decoration: BoxDecoration(
                        color: secondary,
                        borderRadius: BorderRadius.circular(12)),
                    width: double.infinity,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 15.h,
                        ),
                        Text(
                          "James Willson",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 17.sp,
                            color: whiteColor,
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Text(
                          "Balance:   \$2000",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 17.sp,
                            color: whiteColor,
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 80.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  Get.toNamed(AppRoutes.amountdeposit);
                                },
                                child: Container(
                                  height: 35.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: buttoncolor),
                                  child: Center(
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 15.w),
                                      child: Text(
                                        "Deposit",
                                        style: TextStyle(
                                          fontSize: 14.sp,
                                          color: whiteColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Get.toNamed(AppRoutes.amountwithdraw);
                                },
                                child: Container(
                                  height: 35.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: buttoncolor),
                                  child: Center(
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 15.w),
                                      child: Text(
                                        "Withdraw",
                                        style: TextStyle(
                                          fontSize: 14.sp,
                                          color: whiteColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                const Divider(
                  color: whiteColor,
                  thickness: 1,
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: padding),
                  child: InkWell(
                    onTap: () {
                      Get.toNamed(AppRoutes.editpersonaldata);
                    },
                    child: Container(
                      height: 55.h,
                      decoration: BoxDecoration(
                          color: secondary,
                          borderRadius: BorderRadius.circular(10)),
                      width: double.infinity,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 20.w,
                          ),
                          const Icon(
                            Icons.edit,
                            color: buttoncolor,
                          ),
                          SizedBox(
                            width: 15.w,
                          ),
                          Text(
                            "Edit personal data",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: whiteColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                const Divider(
                  color: whiteColor,
                  thickness: 1,
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: padding),
                  child: InkWell(
                    onTap: () {
                      Get.toNamed(AppRoutes.customersupport);
                    },
                    child: Container(
                      height: 55.h,
                      decoration: BoxDecoration(
                          color: Color(0xff4c6276),
                          borderRadius: BorderRadius.circular(10)),
                      width: double.infinity,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 20.w,
                          ),
                          const Icon(
                            Icons.person_outline,
                            color: buttoncolor,
                          ),
                          SizedBox(
                            width: 15.w,
                          ),
                          Text(
                            "Contact Support",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: whiteColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: padding),
                  child: Text(
                    "Account",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: buttoncolor,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: padding),
                  child: reusablerow('Account number', '54724729382'),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: padding),
                  child: reusablerow('Username', 'Add'),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: padding),
                  child: reusablerow('Email', 'Link'),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: padding),
                  child: reusablerow('Phone number', 'Link'),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: padding),
                  child: reusablerow('Password', 'Change'),
                ),
                SizedBox(
                  height: 20.h,
                ),
                const Divider(
                  color: whiteColor,
                  thickness: 1,
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: padding),
                  child: Text(
                    "Personal Information",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: buttoncolor,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: padding),
                  child: reusablerow('Name', 'Mike'),
                ),
                SizedBox(
                  height: 50.h,
                ),
              ],
            ),
          ))
        ],
      ),
    ));
  }
}

Widget reusablerow(String text1, String text2) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        text1,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 14.sp,
          color: whiteColor,
        ),
      ),
      Text(
        text2,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 14.sp,
          color: buttoncolor,
        ),
      ),
    ],
  );
}
