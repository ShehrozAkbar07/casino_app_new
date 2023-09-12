import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Const/color.dart';
import '../home/home.dart';

class PopularEvent2 extends StatefulWidget {
  final String heading;
  final String welcometext;
  final double pading;
  final bool datevalue;
  final bool iconvalue;

  final double width;
  final String endedtext;
  final Color color;
  final Color endedtextcolor;

  PopularEvent2(
      {super.key,
      required this.endedtext,
      required this.color,
      required this.endedtextcolor,
      required this.pading,
      required this.heading,
      required this.width,
      required this.datevalue,
      required this.iconvalue,
      required this.welcometext});

  @override
  State<PopularEvent2> createState() => _PopularEvent2State();
}

class _PopularEvent2State extends State<PopularEvent2> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      child: Container(
        height: 250.h,
        width: widget.width,
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.heading,
                          style: TextStyle(
                              fontSize: 4.5.sp,
                              color: whiteColor,
                              fontWeight: FontWeight.bold),
                        ),
                        const Icon(
                          Icons.arrow_drop_down,
                          color: whiteColor,
                        ),
                      ],
                    )),
                SizedBox(
                  height: 4.h,
                ),
                const Divider(
                  color: Colors.white,
                  thickness: 2,
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: widget.datevalue
                      ? Text(
                          "Mon, Aug 28 8:00PM",
                          style: TextStyle(
                            fontSize: 3.5.sp,
                            color: whiteColor,
                          ),
                        )
                      : Container(
                          height: 25.h,
                          width: 20.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              color: widget.color),
                          child: Center(
                            child: Text(
                              widget.endedtext,
                              style: TextStyle(
                                fontSize: 3.7.sp,
                                color: widget.endedtextcolor,
                              ),
                            ),
                          ),
                        ),
                ),
                // SizedBox(
                //   height: 20.h,
                // ),
                Padding(
                  padding: EdgeInsets.only(left: widget.pading),
                  child: Center(
                    child: Text(
                      widget.welcometext,
                      style: TextStyle(
                        fontSize: 3.5.sp,
                        color: whiteColor,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Stade Rennais FC",
                            style: TextStyle(
                              fontSize: 3.5.sp,
                              color: whiteColor,
                            ),
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(
                            "AC Le Havre",
                            style: TextStyle(
                              fontSize: 3.5.sp,
                              color: whiteColor,
                            ),
                          ),
                        ],
                      ),

                      Padding(
                        padding: EdgeInsets.only(right: 30.w),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            widget.iconvalue
                                ? Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Icon(
                                        Icons.stairs_outlined,
                                        color: whiteColor,
                                      ),
                                      SizedBox(
                                        height: 8.h,
                                      ),
                                      const Icon(
                                        Icons.tv,
                                        color: whiteColor,
                                      ),
                                    ],
                                  )
                                : const SizedBox.shrink(),
                            SizedBox(
                              width: 5.w,
                            ),
                            containerr('Stade Rennais FC', 'Settled'),
                            SizedBox(
                              width: 5.w,
                            ),
                            containerr('Draw', 'Settled'),
                            SizedBox(
                              width: 5.w,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 20.h),
                              child: Text(
                                "+108",
                                style: TextStyle(
                                  fontSize: 3.5.sp,
                                  color: whiteColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )

                      // Container(
                      //   height: 45.h,
                      //   width: 25.w,
                      //   decoration: BoxDecoration(
                      //       borderRadius:
                      //           BorderRadius.circular(10),
                      //       color: buttoncolor),
                      //   child: Center(
                      //     child: Text(
                      //       "Save",
                      //       style: TextStyle(
                      //         fontSize: 4.sp,
                      //         color: whiteColor,
                      //       ),
                      //     ),
                      //   ),
                      // )
                    ],
                  ),
                )
                // Padding(
                //   padding:
                //       EdgeInsets.symmetric(horizontal: 5.w),
                //   child: Row(
                //     mainAxisAlignment:
                //         MainAxisAlignment.spaceBetween,
                //     children: [
                //       Container(
                //         height: 45.h,
                //         width: 60.w,
                //         // color: Colors.green,
                //         child: Row(
                //           mainAxisAlignment:
                //               MainAxisAlignment.spaceBetween,
                //           children: [
                //             Text(
                //               "Resend Email",
                //               style: TextStyle(
                //                 fontSize: 4.sp,
                //                 color: whiteColor,
                //               ),
                //             ),
                //             Container(
                //               height: 45.h,
                //               width: 25.w,
                //               decoration: BoxDecoration(
                //                   borderRadius:
                //                       BorderRadius.circular(
                //                           10),
                //                   color: buttoncolor),
                //               child: Center(
                //                 child: Text(
                //                   "Save",
                //                   style: TextStyle(
                //                     fontSize: 4.sp,
                //                     color: whiteColor,
                //                   ),
                //                 ),
                //               ),
                //             ),
                //           ],
                //         ),
                //       )
                //     ],
                //   ),
                // )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
