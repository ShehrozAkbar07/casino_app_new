import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../AppRoutes/routes.dart';
import '../../Const/color.dart';
import '../../Const/const.dart';
import '../../Widgets/custom_buton.dart';
import '../../Widgets/app_bar.dart';

class AmountDeposit extends StatefulWidget {
  const AmountDeposit({super.key});

  @override
  State<AmountDeposit> createState() => _AmountDepositState();
}

class _AmountDepositState extends State<AmountDeposit> {
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
              text: 'Deposit Amount',
            ),
            Flexible(
                child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: padding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),
                    Center(
                      child: Text(
                        'Choose Method Below',
                        style: TextStyle(
                            fontSize: 23.sp,
                            color: whiteColor,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Text(
                      'Coin List',
                      style: TextStyle(
                          fontSize: 23.sp,
                          color: whiteColor,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    coincontainer('assets/images/eos.png', "EOS", 'EOS-USD'),
                    SizedBox(
                      height: 15.h,
                    ),
                    coincontainer('assets/images/bnb.png', "BNB", 'BNB-USD'),
                    SizedBox(
                      height: 15.h,
                    ),
                    coincontainer('assets/images/xrp.png', "XRP", 'XRP-USD'),
                    SizedBox(
                      height: 15.h,
                    ),
                    coincontainer(
                        'assets/images/bit.png', "Bitcoin", 'BTC-USD'),
                    SizedBox(
                      height: 15.h,
                    ),
                    coincontainer('assets/images/eos.png', "EOS", 'USD'),
                    SizedBox(
                      height: 15.h,
                    ),
                    coincontainer(
                        'assets/images/eth.png', "Ethereum", 'ETH-USD'),
                    SizedBox(
                      height: 30.h,
                    ),
                    const Button(
                      button_text: 'Continue',
                      colors: buttoncolor,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    InkWell(
                      onTap: () async {},
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

Widget coincontainer(String image, String text1, String text2) {
  return InkWell(
    onTap: () {
      Get.toNamed(AppRoutes.withdrawsucess);
    },
    child: Container(
      height: 70.h,
      decoration: BoxDecoration(
          color: secondary, borderRadius: BorderRadius.circular(10)),
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: padding),
        child: Row(
          children: [
            Image.asset(
              image,
              height: 30.h,
              width: 30.w,
            ),
            SizedBox(
              width: 10.w,
            ),
            Padding(
              padding: EdgeInsets.only(top: 15.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text1,
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: whiteColor,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    text2,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: whiteColor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 15.w,
            ),
          ],
        ),
      ),
    ),
  );
}
