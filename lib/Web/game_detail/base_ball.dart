import 'package:casino_app/Web/footer/footer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../Const/color.dart';
import '../../../Widgets/bar.dart';
import '../popular_event/popular_event.dart';
import '../popular_event/popular_event2.dart';

class BaseBall extends StatefulWidget {
  const BaseBall({super.key});

  @override
  State<BaseBall> createState() => _BaseBallState();
}

class _BaseBallState extends State<BaseBall> with TickerProviderStateMixin {
  String? _mySelection1;

  List<Map<String, String>> myJson = [
    {
      'Duration': '0.0000',
    },
    {'Duration': '0.003'},
    {'Duration': '0.005'},
    {'Duration': '0.007'},
    {'Duration': '1.00'},
  ];
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    TabController tabController = TabController(length: 4, vsync: this);

    return SafeArea(
        child: Scaffold(
      backgroundColor: primary,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Bar(),
            SizedBox(
              height: 30.h,
            ),
            SizedBox(
              height: 30.h,
            ),
            Padding(
                padding: EdgeInsets.only(left: 5.w),
                child: Row(
                  children: [
                    Container(
                      height: 50.h,
                      width: 13.w,
                      decoration: BoxDecoration(
                          color: secondary,
                          borderRadius: BorderRadius.circular(8)),
                      child: Center(
                        child: InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: const Icon(
                            Icons.arrow_back_ios,
                            color: whiteColor,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Container(
                      height: 50.h,
                      width: 40.w,
                      decoration: BoxDecoration(
                          color: secondary,
                          borderRadius: BorderRadius.circular(8)),
                      child: Padding(
                        padding: EdgeInsets.only(left: 5.w, top: 14.h),
                        child: Text('BaseBall',
                            style: TextStyle(
                                fontSize: 4.sp,
                                color: whiteColor,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                    Container(
                      height: 50.h,
                      width: 13.w,
                      decoration: BoxDecoration(
                          color: buttoncolor,
                          borderRadius: BorderRadius.circular(12)),
                      child: const Center(
                        child: Icon(
                          Icons.star_outline,
                          color: whiteColor,
                        ),
                      ),
                    ),
                  ],
                )),
            SizedBox(
              height: 30.h,
            ),
            SizedBox(
              width: 10.w,
            ),
            Padding(
              padding: EdgeInsets.only(left: 5.w),
              child: Container(
                height: 3200.h,
                width: 370.w,
                // color: Colors.amber,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // FieldContainer(),
                    SizedBox(
                      height: 30.h,
                    ),

                    Padding(
                      padding: EdgeInsets.only(left: 5.w),
                      child: Container(
                        decoration: BoxDecoration(
                            color: secondary,
                            borderRadius: BorderRadius.circular(16)),
                        width: 130.w,
                        child: TabBar(
                            unselectedLabelColor: Colors.white,
                            // labelColor: Color(AppColors.primary),
                            indicatorPadding: EdgeInsets.zero,
                            indicatorWeight: 0,
                            indicatorSize: TabBarIndicatorSize.tab,
                            indicator: BoxDecoration(
                                color: Color(0xff344452),
                                borderRadius: BorderRadius.circular(28)),
                            controller: tabController,
                            tabs: [
                              Container(
                                height: 20,
                                child: const Tab(
                                  text: 'Live & Upcomming',
                                ),
                              ),
                              const Tab(
                                text: 'Outrights',
                              ),
                              const Tab(
                                text: 'BaseBall',
                              ),
                            ]),
                      ),
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.w),
                      child: Row(
                        children: [
                          Container(
                            height: 45.h,
                            width: 330.w,
                            decoration: BoxDecoration(
                                border: Border.all(color: secondary, width: 1),
                                borderRadius: BorderRadius.circular(12),
                                color: secondary),
                            child: DropdownButton<String>(
                              dropdownColor: primary,
                              icon: Padding(
                                padding: EdgeInsets.only(right: 5.w),
                                child: Icon(
                                  Icons.keyboard_arrow_down_outlined,
                                  size: 7.sp,
                                  color: whiteColor,
                                ),
                              ),
                              underline: const SizedBox(),
                              isExpanded: true,
                              hint: Row(
                                children: [
                                  // SizedBox(
                                  //   width: 15.w,
                                  // ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 5.h, left: 5.w),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('International',
                                            style: TextStyle(
                                                fontSize: 3.6.sp,
                                                color: whiteColor,
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              value: _mySelection1,
                              onChanged: (newValue) {
                                setState(() {
                                  _mySelection1 = newValue;
                                });
                              },
                              items: myJson.map((Map map) {
                                return DropdownMenuItem<String>(
                                  value: map['Duration'].toString(),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 5.w,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: 10.h, left: 5.w),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              map['Duration'].toString(),
                                              style: TextStyle(
                                                  fontSize: 3.6.sp,
                                                  fontWeight: FontWeight.bold,
                                                  color: whiteColor),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    // Padding(
                    //   padding: EdgeInsets.symmetric(horizontal: 5.w),
                    //   child: Container(
                    //     height: 60.h,
                    //     width: double.infinity,
                    //     decoration: BoxDecoration(
                    //         borderRadius: BorderRadius.circular(6),
                    //         color: secondary),
                    //     child: Center(),
                    //   ),
                    // ),

                    SizedBox(
                      height: 30.h,
                    ),
                    PopularEvent(
                      color: red,
                      width: 330.w,
                      heading: 'Premier League',
                      pading: 160.w,
                      endedtextcolor: whiteColor,
                      value: true,
                      endedtext: 'Live9',
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    PopularEvent2(
                      welcometext: "1*2",
                      color: red,
                      width: 330.w,
                      heading: 'Premier League',
                      pading: 150.w,
                      endedtextcolor: whiteColor,
                      endedtext: 'Live9',
                      datevalue: true,
                      iconvalue: false,
                    ),
                    SizedBox(
                      height: 100.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5.w),
                      child: Container(
                        decoration: BoxDecoration(
                            color: secondary,
                            borderRadius: BorderRadius.circular(16)),
                        width: 130.w,
                        child: TabBar(
                            unselectedLabelColor: Colors.white,
                            // labelColor: Color(AppColors.primary),
                            indicatorPadding: EdgeInsets.zero,
                            indicatorWeight: 0,
                            indicatorSize: TabBarIndicatorSize.tab,
                            indicator: BoxDecoration(
                                color: Color(0xff344452),
                                borderRadius: BorderRadius.circular(28)),
                            controller: tabController,
                            tabs: [
                              Container(
                                height: 20,
                                child: const Tab(
                                  text: 'All Bets',
                                ),
                              ),
                              const Tab(
                                text: 'High Rollers',
                              ),
                              const Tab(
                                text: 'Race Leaderboard',
                              ),
                            ]),
                      ),
                    ),

                    SizedBox(
                      height: 50.h,
                    ),
                    Container(
                        height: 380.h,
                        width: 270.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: secondary,
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 15.w,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 25.h),
                              child: betscolumn(
                                  'Events',
                                  'Multi(4)',
                                  'Multi(18)',
                                  'Multi(12)',
                                  'Multi(2)',
                                  'Multi(6)'),
                            ),
                            SizedBox(
                              width: 25.w,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 25.h),
                              child: betscolumn('User', 'Hidden', 'Hidden',
                                  'Hidden', 'Hidden', 'Hidden'),
                            ),
                            SizedBox(
                              width: 25.w,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 25.h),
                              child: betscolumn('Time', '6:41 PMF', '6:41 PMF',
                                  '6:41 PMF', '6:41 PMF', '6:41 PMF'),
                            ),
                            SizedBox(
                              width: 25.w,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 25.h),
                              child: betscolumn('Odds', '66:56', '21331.31',
                                  '1.43', '1.34', '343'),
                            ),
                            SizedBox(
                              width: 25.w,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 25.h),
                              child: betscolumn('Events', '66:56', '66:56',
                                  '66:56', '0.36437', '0.36437'),
                            ),
                            SizedBox(
                              width: 25.w,
                            ),
                          ],
                        ))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 550.h,
            ),
            const Footer()
          ],
        ),
      ),
    ));
  }
}

Widget containerr(String text1, String text2) {
  return Container(
    height: 60.h,
    width: 40.w,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10), color: buttoncolor),
    child: Padding(
      padding: EdgeInsets.only(top: 10.h, left: 5.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text1,
            style: TextStyle(
              fontSize: 3.5.sp,
              color: whiteColor,
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          Text(
            text2,
            style: TextStyle(
              fontSize: 3.4.sp,
              color: whiteColor,
            ),
          ),
        ],
      ),
    ),
  );
}

Widget betscolumn(String heading, String text1, String text2, String text3,
    String text4, String text5) {
  return Column(
    children: [
      Text(
        heading,
        style: TextStyle(
            fontSize: 3.9.sp, color: whiteColor, fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: 40.h,
      ),
      Text(
        text1,
        style: TextStyle(
          fontSize: 3.9.sp,
          color: whiteColor,
        ),
      ),
      SizedBox(
        height: 40.h,
      ),
      Text(
        text2,
        style: TextStyle(
          fontSize: 3.9.sp,
          color: whiteColor,
        ),
      ),
      SizedBox(
        height: 40.h,
      ),
      Text(
        text3,
        style: TextStyle(
          fontSize: 3.9.sp,
          color: whiteColor,
        ),
      ),
      SizedBox(
        height: 40.h,
      ),
      Text(
        text4,
        style: TextStyle(
          fontSize: 3.9.sp,
          color: whiteColor,
        ),
      ),
      SizedBox(
        height: 40.h,
      ),
      Text(
        text5,
        style: TextStyle(
          fontSize: 3.9.sp,
          color: whiteColor,
        ),
      ),
    ],
  );
}
