import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../AppRoutes/routes.dart';
import '../Const/color.dart';
import '../Const/const.dart';

class Appbarr extends StatefulWidget {
  bool? iconCross;
  final String text;
  Appbarr({required this.text, this.iconCross});

  @override
  State<Appbarr> createState() => _AppbarrState();
}

class _AppbarrState extends State<Appbarr> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80.h,
          width: double.infinity,
          color: secondary,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: padding),
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
                // SizedBox(
                //   width: 70.w,
                // ),
                Text(
                  widget.text,
                  style: TextStyle(
                    fontSize: 20.sp,
                    color: whiteColor,
                  ),
                ),
                widget.iconCross!
                    ? InkWell(
                        onTap: () {
                          Get.toNamed(AppRoutes.notifications);
                        },
                        child: const Icon(
                          Icons.notifications_outlined,
                          size: 27,
                          color: whiteColor,
                        ),
                      )
                    : const SizedBox.shrink()
              ],
            ),
          ),
        ),
      ],
    );
  }
}
