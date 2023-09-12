import 'package:casino_app/Const/color.dart';
import 'package:casino_app/Const/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../AppRoutes/routes.dart';
import 'appbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: primary,
      body: Column(
        children: [
          // Appbarr(
          //   text: 'Account Setting',
          //   iconCross: true,
          // ),
          const HomeScreenAppbar(),
          Flexible(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // SizedBox(
                  //   height: 20.h,
                  // ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: padding),
                    child: Container(
                      height: 200.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              image: AssetImage('assets/images/banner.PNG'),
                              fit: BoxFit.contain)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: padding),
                    child: Container(
                      height: 40.h,
                      width: 160.w,
                      decoration: BoxDecoration(
                        color: buttoncolor,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.wifi,
                                  size: 17,
                                  color: black,
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Text(
                                  "Live",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10.sp,
                                    color: black,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              height: 20.h,
                              width: 2.w,
                              color: black,
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.sports_baseball,
                                  color: black,
                                  size: 17,
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Text(
                                  "Sport Book",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10.sp,
                                    color: black,
                                  ),
                                ),
                              ],
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
                    child: Container(
                      height: 40.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: secondary),
                      child: Image.asset('assets/images/balls.png'),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      itemCount: 10,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 5.h, horizontal: 10.w),
                          child: InkWell(
                            onTap: () {
                              Get.toNamed(AppRoutes.odds);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: whiteColor,
                                  borderRadius: BorderRadius.circular(12)),
                              height: 110.h,
                              width: double.infinity,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10.w),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              height: 30.h,
                                              width: 30.w,
                                              child: Image.asset(
                                                  'assets/images/un.png'),
                                            ),
                                            SizedBox(
                                              width: 10.w,
                                            ),
                                            Text(
                                              "Westindies, Group A",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                // fontWeight: FontWeight.bold,
                                                fontSize: 12.sp,
                                                color: black,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          "08:10/12:45",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            // fontWeight: FontWeight.bold,
                                            fontSize: 12.sp,
                                            color: black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: padding),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Portal",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15.sp,
                                                color: black,
                                              ),
                                            ),
                                            Text(
                                              "Live Scores",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15.sp,
                                                color: black,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            contaierr('1', '3.47'),
                                            contaierr('X', '2.44'),
                                            contaierr('2', '3.90'),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                  SizedBox(
                    height: 50.h,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

Widget contaierr(String text1, String text2) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 2.w),
    child: Container(
      height: 50.h,
      width: 50.w,
      decoration: BoxDecoration(
          color: Color(0xfff6f7f8), borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          SizedBox(
            height: 5.h,
          ),
          Text(
            text1,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 11.sp,
              color: black,
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            text2,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 11.sp,
              color: black,
            ),
          ),
        ],
      ),
    ),
  );
}
