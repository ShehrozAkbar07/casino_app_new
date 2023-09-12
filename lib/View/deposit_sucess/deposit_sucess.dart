import 'package:casino_app/Const/const.dart';
import 'package:casino_app/Widgets/app_bar.dart';
import 'package:casino_app/Widgets/custom_buton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Const/color.dart';

class DepostiSucess extends StatefulWidget {
  const DepostiSucess({super.key});

  @override
  State<DepostiSucess> createState() => _DepostiSucessState();
}

class _DepostiSucessState extends State<DepostiSucess> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: primary,
      body: Column(
        children: [
          Appbarr(
            text: 'Deposit Success',
            iconCross: true,
          ),
          SizedBox(
            height: 60.h,
          ),
          Center(
            child: Image.asset(
              'assets/images/bitcoin.png',
              height: 100.h,
              width: 100.w,
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          Center(
            child: Text(
              "Payment has been withdrawn Successful",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25.sp,
                color: whiteColor,
              ),
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: padding),
            child: Container(
              height: 300.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: secondary),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: padding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30.h,
                    ),
                    Text(
                      "Payment Information",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 17.sp,
                        color: whiteColor,
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    reusablerow('Agent Name', 'Jack Rachered'),
                    SizedBox(
                      height: 20.h,
                    ),
                    reusablerow('Wallet Number', '1412344255523'),
                    SizedBox(
                      height: 20.h,
                    ),
                    reusablerow('Amount', '2000'),
                    SizedBox(
                      height: 20.h,
                    ),
                    reusablerow('Wallet ID', '132'),
                    SizedBox(
                      height: 20.h,
                    ),
                    reusablerow('Transaction ID', '131314'),
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
            child: const Button(
                button_text: 'Back to Sign In', colors: buttoncolor),
          )
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
