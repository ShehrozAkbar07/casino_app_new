import 'package:casino_app/Const/color.dart';
import 'package:casino_app/Const/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Widgets/app_bar.dart';

class CategoryDetail extends StatefulWidget {
  final String categoryName;
  CategoryDetail({super.key, required this.categoryName});

  @override
  State<CategoryDetail> createState() => _CategoryDetailState();
}

class _CategoryDetailState extends State<CategoryDetail> {
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
          Appbarr(
            text: widget.categoryName,
            iconCross: true,
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
                  // categoryrow('Juwa', 'viewall'),

                  SizedBox(
                      height: 170.h,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: sports.length,
                        itemBuilder: (context, index) {
                          return categoryImage(
                              sports[index]['image'], sports[index]['title']);
                        },
                      )),
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
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

Widget categoryrow(String text1, String text2) {
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
        Text(
          text2,
          textAlign: TextAlign.center,
          style: TextStyle(
            // fontWeight: FontWeight.bold,
            fontSize: 15.sp,
            color: whiteColor,
          ),
        ),
      ],
    ),
  );
}

Widget categoryImage(String image, String text) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 10.w),
    child: Column(
      children: [
        Container(
          height: 130.h,
          width: 150.w,
          decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(12),
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
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
  );
}
