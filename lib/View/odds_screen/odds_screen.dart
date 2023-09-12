import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Const/color.dart';
import '../../Const/const.dart';
import '../../Widgets/app_bar.dart';

class OddScreen extends StatefulWidget {
  const OddScreen({super.key});

  @override
  State<OddScreen> createState() => _OddScreenState();
}

class _OddScreenState extends State<OddScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: primary,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Appbarr(
              iconCross: true,
              text: 'Odds',
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
                    Container(
                      height: 200.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              image: AssetImage('assets/images/odd.png'),
                              fit: BoxFit.contain)),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.foggy,
                          color: Colors.amber,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          "Odds",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14.sp,
                            color: whiteColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    oddContainer(),
                    SizedBox(
                      height: 20.h,
                    ),
                    oddContainer(),
                    SizedBox(
                      height: 20.h,
                    ),
                    oddContainer(),
                    SizedBox(
                      height: 20.h,
                    ),
                    oddContainer(),
                    SizedBox(
                      height: 30.h,
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

Widget oddContainer() {
  return Container(
    height: 150.h,
    width: double.infinity,
    decoration: BoxDecoration(
      color: secondary,
      borderRadius: BorderRadius.circular(12),
    ),
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Column(children: [
        SizedBox(
          height: 10.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 30.h,
                  width: 30.w,
                  child: Image.asset('assets/images/un.png'),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  "Newzeland",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14.sp,
                    color: whiteColor,
                  ),
                ),
              ],
            ),
            Text(
              "vs",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.sp,
                color: whiteColor,
              ),
            ),
            Row(
              children: [
                Container(
                  height: 30.h,
                  width: 30.w,
                  child: Image.asset('assets/images/un.png'),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  "Africa",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14.sp,
                    color: whiteColor,
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 20.h,
                width: 20.w,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: buttoncolor),
                child: Center(
                  child: Text(
                    "1",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14.sp,
                      color: whiteColor,
                    ),
                  ),
                ),
              ),
              Container(
                height: 20.h,
                width: 20.w,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: buttoncolor),
                child: Center(
                  child: Text(
                    "1",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14.sp,
                      color: whiteColor,
                    ),
                  ),
                ),
              ),
              Container(
                height: 20.h,
                width: 20.w,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: buttoncolor),
                child: Center(
                  child: Text(
                    "1",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14.sp,
                      color: whiteColor,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 45.h,
              width: 80.w,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1)),
              child: Center(
                child: Text(
                  "1",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14.sp,
                    color: whiteColor,
                  ),
                ),
              ),
            ),
            Container(
              height: 45.h,
              width: 80.w,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1)),
              child: Center(
                child: Text(
                  "1",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14.sp,
                    color: whiteColor,
                  ),
                ),
              ),
            ),
            Container(
              height: 45.h,
              width: 80.w,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1)),
              child: Center(
                child: Text(
                  "1",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14.sp,
                    color: whiteColor,
                  ),
                ),
              ),
            )
          ],
        ),
      ]),
    ),
  );
}
