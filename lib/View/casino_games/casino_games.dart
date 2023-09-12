import 'package:casino_app/AppRoutes/routes.dart';
import 'package:casino_app/Const/color.dart';
import 'package:casino_app/Const/const.dart';
import 'package:casino_app/View/category_detail/category_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CasinoGames extends StatefulWidget {
  const CasinoGames({super.key});

  @override
  State<CasinoGames> createState() => _CasinoGamesState();
}

class _CasinoGamesState extends State<CasinoGames> {
  List sports = [
    {
      'image': 'assets/images/live.png',
      'title': 'Betting',
    },
    {
      'image': 'assets/images/tennis.png',
      'title': 'Tennis Bet',
    },
    {
      'image': 'assets/images/world.png',
      'title': 'World Sport',
    }
  ];
  List snooker = [
    {
      'image': 'assets/images/30.png',
      'title': 'Tennis Bet',
    },
    {
      'image': 'assets/images/world.png',
      'title': 'World Sports',
    },
    {
      'image': 'assets/images/oker.png',
      'title': 'Betting',
    }
  ];
  List casino = [
    {
      'image': 'assets/images/oker.png',
      'title': 'Betting',
    },
    {
      'image': 'assets/images/tennis.png',
      'title': 'Tennis Bet',
    },
    {
      'image': 'assets/images/live.png',
      'title': 'World Sport',
    }
  ];
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

          Container(
            height: 80.h,
            width: double.infinity,
            color: secondary,
            child: Column(
              children: [
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 50.h,
                        width: 100.w,
                        child: Image.asset(
                          'assets/images/logo.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                      Container(
                        height: 40.h,
                        width: 120,
                        // color: Colors.yellow,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 25.h,
                                width: 80.w,
                                decoration: BoxDecoration(
                                    color: Color(0xff687985),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 10.w),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          height: 17.h,
                                          width: 17.w,
                                          decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: buttoncolor),
                                          child: const Center(
                                            child: Icon(
                                              Icons.add,
                                              color: primary,
                                              size: 14,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          "700000",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 10.sp,
                                            color: whiteColor,
                                          ),
                                        ),
                                      ]),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Get.toNamed(AppRoutes.notifications);
                                },
                                child: const Icon(
                                  Icons.notifications_none_outlined,
                                  color: buttoncolor,
                                ),
                              )
                            ]),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
              ],
            ),
          ),
          Flexible(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // SizedBox(
                  //   height: 20.h,
                  // ),

                  SizedBox(
                    height: 30.h,
                  ),
                  categoryrow('Juwa', 'viewall', context,
                      CategoryDetail(categoryName: 'Juwa')),
                  SizedBox(
                    height: 20.h,
                  ),
                  SizedBox(
                      height: 170.h,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: sports.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              // Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoryDetail(categoryName: sports[index]['images'])));
                            },
                            child: categoryImage(
                                sports[index]['image'], sports[index]['title']),
                          );
                        },
                      )),
                  SizedBox(
                    height: 20.h,
                  ),
                  categoryrow('Jackpot', 'viewall', context,
                      CategoryDetail(categoryName: 'Jackpot')),
                  SizedBox(
                    height: 20.h,
                  ),
                  SizedBox(
                      height: 180.h,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: snooker.length,
                        itemBuilder: (context, index) {
                          return categoryImage(
                              snooker[index]['image'], snooker[index]['title']);
                        },
                      )),
                  categoryrow('Roulette', 'viewall', context,
                      CategoryDetail(categoryName: 'Roulette')),
                  SizedBox(
                    height: 20.h,
                  ),
                  SizedBox(
                      height: 180.h,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: casino.length,
                        itemBuilder: (context, index) {
                          return categoryImage(
                              casino[index]['image'], casino[index]['title']);
                        },
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

Widget categoryrow(String text1, String text2, context, dynamic ab) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: padding),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text1,
          textAlign: TextAlign.center,
          style: TextStyle(
            // fontWeight: FontWeight.bold,
            fontSize: 17.sp,
            color: whiteColor,
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => ab));
          },
          child: Text(
            text2,
            textAlign: TextAlign.center,
            style: TextStyle(
              // fontWeight: FontWeight.bold,
              fontSize: 15.sp,
              color: whiteColor,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget categoryImage(String image, String text) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 10.w),
    child: InkWell(
      onTap: () {
        Get.toNamed(AppRoutes.gamesdetails);
      },
      child: Column(
        children: [
          Container(
            height: 130.h,
            width: 150.w,
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.cover)),
          ),
          SizedBox(
            height: 10.h,
          ),
          Center(
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15.sp,
                color: whiteColor,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
