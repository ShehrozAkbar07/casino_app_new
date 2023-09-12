import 'package:casino_app/Web/footer/footer.dart';
import 'package:casino_app/Web/general/general_phone_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Const/color.dart';
import '../../Widgets/bar.dart';
import 'general_email_container.dart';

class General extends StatefulWidget {
  const General({super.key});

  @override
  State<General> createState() => _GeneralState();
}

class _GeneralState extends State<General> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: primary,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Bar(),
            SizedBox(
              height: 80.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 10.w,
                ),
                Container(
                  height: 500.h,
                  width: 70.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: secondary,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 15.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5.w),
                        child: Text(
                          "General",
                          style: TextStyle(
                              fontSize: 5.sp,
                              color: whiteColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      const Divider(
                        color: whiteColor,
                        thickness: 1.3,
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Text(
                          "General",
                          style: TextStyle(
                              fontSize: 4.5.sp,
                              color: whiteColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 35.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Text(
                          "Security",
                          style: TextStyle(
                              fontSize: 4.5.sp,
                              color: whiteColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 35.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Text(
                          "Preference",
                          style: TextStyle(
                              fontSize: 4.5.sp,
                              color: whiteColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 35.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Text(
                          "Session",
                          style: TextStyle(
                              fontSize: 4.5.sp,
                              color: whiteColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 35.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Text(
                          "Verify",
                          style: TextStyle(
                              fontSize: 4.5.sp,
                              color: whiteColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 35.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Text(
                          "Offers",
                          style: TextStyle(
                              fontSize: 4.5.sp,
                              color: whiteColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Container(
                  height: 690.h,
                  width: 290.w,
                  color: Colors.transparent,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        GeneralEmailContainer(),
                        SizedBox(
                          height: 30.h,
                        ),
                        const GeneralPhoneContainer()

                        // Container(
                        //   height: 380.h,
                        //   width: 270.w,
                        //   decoration: BoxDecoration(
                        //     borderRadius: BorderRadius.circular(12),
                        //     color: secondary,
                        //   ),
                        // )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 600.h,
            ),
            const Footer()
          ],
        ),
      ),
    ));
  }
}
