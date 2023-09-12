import 'package:casino_app/Const/color.dart';
import 'package:casino_app/Const/const.dart';
import 'package:casino_app/Widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
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
                  height: 40.h,
                ),
                notificationContaier(),
                SizedBox(
                  height: 19.h,
                ),
                notificationContaier(),
                SizedBox(
                  height: 19.h,
                ),
                notificationContaier(),
                SizedBox(
                  height: 19.h,
                ),
                notificationContaier(),
              ],
            ),
          ))
        ],
      ),
    ));
  }
}

Widget notificationContaier() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: padding),
    child: Container(
      height: 90.h,
      decoration: BoxDecoration(
          color: secondary, borderRadius: BorderRadius.circular(15)),
      width: double.infinity,
      child: Row(
        children: [
          SizedBox(
            width: 20.w,
          ),
          const Icon(
            Icons.notifications_none_outlined,
            color: buttoncolor,
            size: 32,
          ),
          SizedBox(
            width: 20.w,
          ),
          Padding(
            padding: EdgeInsets.only(top: 15.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Congrats you win your bet",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14.sp,
                    color: whiteColor,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  "You won bet of 220\$ withdraw now",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 13.sp,
                    color: whiteColor,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}
