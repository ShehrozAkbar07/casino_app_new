import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Const/color.dart';

class StaticticsalertContainer extends StatefulWidget {
  const StaticticsalertContainer({super.key});

  @override
  State<StaticticsalertContainer> createState() =>
      _StaticticsalertContainerState();
}

class _StaticticsalertContainerState extends State<StaticticsalertContainer> {
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
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30.h,
                ),
                Center(
                  child: Image.asset(
                    'assets/images/stockrise.PNG',
                    fit: BoxFit.contain,
                    height: 100.h,
                    width: 60.w,
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Center(
                  child: Text('This user has no visible statistics.',
                      style: TextStyle(
                          fontSize: 4.sp,
                          color: const Color(0xffb3bbd1),
                          fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  height: 30.h,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
