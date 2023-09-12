import 'package:casino_app/AppRoutes/routes.dart';
import 'package:casino_app/Const/const.dart';
import 'package:casino_app/Widgets/app_bar.dart';
import 'package:casino_app/Widgets/custom_buton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Const/color.dart';
import '../../Widgets/custom_text_field.dart';

class WithdrawSucess extends StatefulWidget {
  const WithdrawSucess({super.key});

  @override
  State<WithdrawSucess> createState() => _WithdrawSucessState();
}

class _WithdrawSucessState extends State<WithdrawSucess> {
  TextEditingController wallet = TextEditingController();
  TextEditingController amount = TextEditingController();
  TextEditingController walletid = TextEditingController();
  TextEditingController transferid = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: padding, vertical: 30.h),
        child: InkWell(
          onTap: () {
            Get.toNamed(AppRoutes.depositsucess);
          },
          child: const Button(
              button_text: 'Proceed To Withdraw', colors: buttoncolor),
        ),
      ),
      backgroundColor: primary,
      body: Column(
        children: [
          Appbarr(
            text: 'Withdraw Success',
            iconCross: true,
          ),
          Flexible(
              child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: padding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30.h,
                  ),
                  Text(
                    "Withdraw Rocket",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.sp,
                      color: whiteColor,
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  CustomTextFieldd(
                    numbertyppe: false,
                    ab: false,
                    controller: wallet,
                    text: 'Wallet No',
                  ),
                  SizedBox(
                    height: 19.h,
                  ),
                  CustomTextFieldd(
                    numbertyppe: false,
                    ab: false,
                    controller: amount,
                    text: 'Amount (limit 400 - 5000)',
                  ),
                  SizedBox(
                    height: 19.h,
                  ),
                  CustomTextFieldd(
                    numbertyppe: false,
                    ab: false,
                    controller: walletid,
                    text: 'Wallet ID',
                  ),
                  SizedBox(
                    height: 19.h,
                  ),
                  CustomTextFieldd(
                    numbertyppe: false,
                    ab: false,
                    controller: transferid,
                    text: 'Transfer ID',
                  ),
                  SizedBox(
                    height: 150.h,
                  ),
                  // Padding(
                  //   padding: EdgeInsets.symmetric(horizontal: padding),
                  //   child: const Button(
                  //       button_text: 'Proceed To Withdraw',
                  //       colors: buttoncolor),
                  // )
                ],
              ),
            ),
          )),
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
          color: whiteColor,
        ),
      ),
    ],
  );
}
