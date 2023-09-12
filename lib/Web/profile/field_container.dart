import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Const/color.dart';

class FieldContainer extends StatefulWidget {
  const FieldContainer({super.key});

  @override
  State<FieldContainer> createState() => _FieldContainerState();
}

class _FieldContainerState extends State<FieldContainer> {
  TextEditingController controller = TextEditingController();
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 380.h,
      width: 290.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: secondary,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        child: Column(
          children: [
            // CustomTextFieldd(
            //   numbertyppe: false,
            //   ab: false,
            //   controller: controller,
            //   text: 'Email',
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Password",
                      style: TextStyle(
                          fontSize: 4.5.sp,
                          color: whiteColor,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    SizedBox(
                      width: 160.w,
                      height: 45.h,
                      child: TextFormField(
                        controller: controller,
                        style: const TextStyle(color: Colors.white),
                        textAlign: TextAlign.left,
                        decoration: InputDecoration(
                          labelStyle: const TextStyle(
                              color: Colors.white, fontSize: 14),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 14, horizontal: 10),
                          fillColor: const Color(0xff4c6276),
                          filled: true,
                          prefix: Padding(
                            padding: EdgeInsets.only(right: 5.w),
                          ),
                          hintText: "Old Password",
                          hintStyle: const TextStyle(
                              color: Colors.white, fontSize: 14),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: secondary, width: 1.0),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: secondary, width: 1.0),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    SizedBox(
                      width: 160.w,
                      height: 45.h,
                      child: TextFormField(
                        controller: controller1,
                        style: const TextStyle(color: Colors.white),
                        textAlign: TextAlign.left,
                        decoration: InputDecoration(
                          labelStyle: const TextStyle(
                              color: Colors.white, fontSize: 14),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 14, horizontal: 10),
                          fillColor: const Color(0xff4c6276),
                          filled: true,
                          prefix: Padding(
                            padding: EdgeInsets.only(right: 5.w),
                          ),
                          hintText: "New Password",
                          hintStyle: const TextStyle(
                              color: Colors.white, fontSize: 14),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: secondary, width: 1.0),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: secondary, width: 1.0),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    SizedBox(
                      width: 160.w,
                      height: 45.h,
                      child: TextFormField(
                        controller: controller2,
                        style: const TextStyle(color: Colors.white),
                        textAlign: TextAlign.left,
                        decoration: InputDecoration(
                          labelStyle: const TextStyle(
                              color: Colors.white, fontSize: 14),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 14, horizontal: 10),
                          fillColor: const Color(0xff4c6276),
                          filled: true,
                          prefix: Padding(
                            padding: EdgeInsets.only(right: 5.w),
                          ),
                          hintText: "Retype Password",
                          hintStyle: const TextStyle(
                              color: Colors.white, fontSize: 14),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: secondary, width: 1.0),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: secondary, width: 1.0),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 250.h),
                  child: Container(
                    height: 45.h,
                    width: 25.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: buttoncolor),
                    child: Center(
                      child: Text(
                        "Save",
                        style: TextStyle(
                          fontSize: 4.sp,
                          color: whiteColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
