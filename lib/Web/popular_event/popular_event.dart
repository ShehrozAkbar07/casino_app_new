import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Const/color.dart';
import '../home/home.dart';

class PopularEvent extends StatefulWidget {
  final String heading;

  final double pading;
  final bool value;
  final double width;

  final String endedtext;
  final Color color;
  final Color endedtextcolor;

  const PopularEvent(
      {super.key,
      required this.value,
      required this.endedtext,
      required this.color,
      required this.endedtextcolor,
      required this.pading,
      required this.heading,
      required this.width});

  @override
  State<PopularEvent> createState() => _PopularEventState();
}

class _PopularEventState extends State<PopularEvent> {
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
                  child: Text(
                    widget.heading,
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
                  child: Container(
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
                      "1*2",
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

                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "2",
                                style: TextStyle(
                                  fontSize: 3.5.sp,
                                  color: yellow,
                                ),
                              ),
                              SizedBox(
                                height: 8.h,
                              ),
                              Text(
                                "2",
                                style: TextStyle(
                                  fontSize: 3.5.sp,
                                  color: yellow,
                                ),
                              ),
                            ],
                          ),
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
                          containerr('AC Le Havre', 'Settled'),
                          SizedBox(
                            width: 5.w,
                          ),
                          widget.value
                              ? Padding(
                                  padding: EdgeInsets.only(top: 20.h),
                                  child: Text(
                                    "+108",
                                    style: TextStyle(
                                      fontSize: 3.5.sp,
                                      color: whiteColor,
                                    ),
                                  ),
                                )
                              : const SizedBox.shrink()
                        ],
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
