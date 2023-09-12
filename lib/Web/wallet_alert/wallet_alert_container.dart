import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Const/color.dart';

class WalletAlertContainer extends StatefulWidget {
  const WalletAlertContainer({super.key});

  @override
  State<WalletAlertContainer> createState() => _WalletAlertContainerState();
}

class _WalletAlertContainerState extends State<WalletAlertContainer> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: const Color(0xff1d2b36),
      height: 100.h,
      width: size.width * 0.5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10.h,
          ),
          Container(
            height: 375.h,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: secondary, width: 2)),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30.h,
                  ),
                  Text(
                    "Email",
                    style: TextStyle(
                        fontSize: 5.sp,
                        color: whiteColor,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Text('In order to deposit you need to verify your email.',
                      style: TextStyle(
                          fontSize: 4.sp,
                          color: const Color(0xffb3bbd1),
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 10.h,
                  ),
                  const Divider(
                    thickness: 1,
                    color: secondary,
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Row(
                    children: [
                      Text('Email',
                          style: TextStyle(
                              fontSize: 4.sp,
                              color: const Color(0xffb3bbd1),
                              fontWeight: FontWeight.bold)),
                      const Icon(
                        Icons.star,
                        size: 10,
                        color: red,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  SizedBox(
                    width: 150.w,
                    height: 45.h,
                    child: TextFormField(
                      controller: controller,
                      style: const TextStyle(color: whiteColor),
                      textAlign: TextAlign.left,
                      decoration: InputDecoration(
                        labelStyle:
                            const TextStyle(color: Colors.white, fontSize: 14),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 14, horizontal: 10),
                        fillColor: const Color(0xff13212d),
                        filled: true,
                        prefix: Padding(
                          padding: EdgeInsets.only(right: 5.w),
                        ),
                        hintText: "amej*******@gmail.com",
                        hintStyle:
                            const TextStyle(color: Colors.white, fontSize: 14),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xff5b6f84), width: 2.0),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xff5b6f84), width: 2.0),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xff5b6f84), width: 2.0),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  const Divider(
                    thickness: 1,
                    color: secondary,
                  ),
                  SizedBox(
                    height: 35.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 45.h,
                          width: 25.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xff3276da)),
                          child: Center(
                            child: Text(
                              "Open Gmail",
                              style: TextStyle(
                                fontSize: 3.7.sp,
                                color: whiteColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "Resend Email",
                            style: TextStyle(
                                fontSize: 3.5.sp,
                                color: whiteColor,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 42.h,
                              width: 22.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(13),
                                  color: const Color(0xff69e244)),
                              child: Center(
                                child: Text(
                                  'Save',
                                  style: TextStyle(
                                    fontSize: 4.sp,
                                    color: primary,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
