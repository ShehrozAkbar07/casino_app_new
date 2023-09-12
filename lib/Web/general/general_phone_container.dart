import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Const/color.dart';

class GeneralPhoneContainer extends StatefulWidget {
  const GeneralPhoneContainer({super.key});

  @override
  State<GeneralPhoneContainer> createState() => _GeneralPhoneContainerState();
}

class _GeneralPhoneContainerState extends State<GeneralPhoneContainer> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 330.h,
      width: 290.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: secondary,
      ),
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 23.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: Text(
                  "Phone Number",
                  style: TextStyle(
                      fontSize: 4.5.sp,
                      color: whiteColor,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              const Divider(
                color: Colors.white,
                thickness: 2,
              ),
              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: SizedBox(
                  width: 160.w,
                  height: 45.h,
                  child: TextFormField(
                    controller: controller,
                    style:
                        const TextStyle(color: Color.fromARGB(255, 14, 2, 2)),
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      labelStyle:
                          const TextStyle(color: Colors.white, fontSize: 14),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 14, horizontal: 10),
                      fillColor: const Color(0xff4c6276),
                      filled: true,
                      prefix: Padding(
                        padding: EdgeInsets.only(right: 5.w),
                      ),
                      hintText: "Country Code",
                      suffixIcon: const Icon(
                        Icons.arrow_drop_down,
                        color: whiteColor,
                      ),
                      hintStyle:
                          const TextStyle(color: Colors.white, fontSize: 14),
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
              ),
              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: SizedBox(
                  width: 160.w,
                  height: 45.h,
                  child: TextFormField(
                    controller: controller,
                    style:
                        const TextStyle(color: Color.fromARGB(255, 14, 2, 2)),
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      labelStyle:
                          const TextStyle(color: Colors.white, fontSize: 14),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 14, horizontal: 10),
                      fillColor: const Color(0xff4c6276),
                      filled: true,
                      prefix: Padding(
                        padding: EdgeInsets.only(right: 5.w),
                      ),
                      hintText: "Phone Number",
                      hintStyle:
                          const TextStyle(color: Colors.white, fontSize: 14),
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
              ),
              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 45.h,
                      width: 25.w,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          "Open Gmail",
                          style: TextStyle(
                            fontSize: 3.7.sp,
                            color: Colors.transparent,
                          ),
                        ),
                      ),
                    ),
                    Container(
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
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
