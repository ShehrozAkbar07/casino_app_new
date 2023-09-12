import 'package:casino_app/AppRoutes/routes.dart';
import 'package:casino_app/Const/color.dart';
import 'package:casino_app/Const/const.dart';
import 'package:casino_app/Widgets/app_bar.dart';
import 'package:casino_app/Widgets/custom_buton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class GameDetailPage extends StatefulWidget {
  const GameDetailPage({super.key});

  @override
  State<GameDetailPage> createState() => _GameDetailPageState();
}

class _GameDetailPageState extends State<GameDetailPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.h),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 43.h,
                width: 140.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: buttoncolor),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.w),
                    child: Text(
                      "Recharge",
                      style: TextStyle(
                        fontSize: 20.sp,
                        color: whiteColor,
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
                  height: 43.h,
                  width: 140.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), color: yellow),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.w),
                      child: Text(
                        "Withdraw",
                        style: TextStyle(
                          fontSize: 20.sp,
                          color: whiteColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: primary,
      body: Column(
        children: [
          Container(
            height: 80.h,
            width: double.infinity,
            color: secondary,
            child: Column(
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Container(
                          height: 40.h,
                          width: 40.w,
                          decoration: const BoxDecoration(
                              color: primary, shape: BoxShape.circle),
                          child: const Center(
                            child: Icon(
                              Icons.arrow_back,
                              size: 17,
                              color: whiteColor,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "Casino Game",
                        style: TextStyle(
                          fontSize: 20.sp,
                          color: whiteColor,
                        ),
                      ),
                      Container(
                        height: 25.h,
                        width: 80.w,
                        decoration: BoxDecoration(
                            color: Color(0xff687985),
                            borderRadius: BorderRadius.circular(5)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 17.h,
                                  width: 17.w,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xffffc000)),
                                  child: const Center(
                                    child: Icon(
                                      Icons.add,
                                      color: primary,
                                      size: 14,
                                    ),
                                  ),
                                ),
                                Text(
                                  "700000",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10.sp,
                                    color: whiteColor,
                                  ),
                                ),
                              ]),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
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
                    height: 280.h,
                    decoration: BoxDecoration(
                        color: secondary,
                        borderRadius: BorderRadius.circular(12)),
                    width: double.infinity,
                    child: Image.asset(
                      'assets/images/casino.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: padding),
                  child: const Button(
                      button_text: 'Play Now', colors: buttoncolor),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: padding),
                  child: Text(
                    "Casino Game",
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: whiteColor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: padding),
                  child: Text(
                    "Powered by BRB Bet",
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Color.fromARGB(255, 193, 191, 191),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: padding),
                    child: Row(
                      children: [
                        Text(
                          "Rating",
                          style: TextStyle(
                            fontSize: 17.sp,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                        SizedBox(
                          width: 15.w,
                        ),
                        Text(
                          "5.0",
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        const Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            )
                          ],
                        )
                      ],
                    )),
                SizedBox(
                  height: 30.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: padding),
                  child: Text(
                    "Details",
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: whiteColor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: padding),
                  child: Text(
                    "Mauris condimentum erat nisl. Vivamus quis event maximus elit. Morbi tristique, risus vitae semper a congue, felis nulla varius turpis, eget fringilla eros nunc quis turpis. Praesent sed elit and see more… ",
                    style: TextStyle(
                      fontSize: 17.sp,
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ),
                SizedBox(
                  height: 200.h,
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
