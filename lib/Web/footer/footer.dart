import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Const/color.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1510.h,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xff0a1720),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 50.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 19.w),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    columnheading('Sports'),
                    SizedBox(
                      height: 10.h,
                    ),
                    columntext('Home'),
                    SizedBox(
                      height: 8.h,
                    ),
                    columntext('Live'),
                    SizedBox(
                      height: 8.h,
                    ),
                    columntext('Sports Rule')
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    columnheading('Casino'),
                    SizedBox(
                      height: 10.h,
                    ),
                    columntext('Games'),
                    SizedBox(
                      height: 8.h,
                    ),
                    columntext('VIP Club'),
                    SizedBox(
                      height: 8.h,
                    ),
                    columntext('Promotions')
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    columnheading('Supports'),
                    SizedBox(
                      height: 10.h,
                    ),
                    columntext('Fariness'),
                    SizedBox(
                      height: 8.h,
                    ),
                    columntext('Affiliate'),
                    SizedBox(
                      height: 8.h,
                    ),
                    columntext('Responsible Gambling'),
                    SizedBox(
                      height: 8.h,
                    ),
                    columntext('Gamble Aware'),
                    SizedBox(
                      height: 8.h,
                    ),
                    columntext('Live Support'),
                    SizedBox(
                      height: 8.h,
                    ),
                    columntext('Help Center')
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    columnheading('Community'),
                    SizedBox(
                      height: 10.h,
                    ),
                    columntext('Blog'),
                    SizedBox(
                      height: 8.h,
                    ),
                    columntext('Forum'),
                    SizedBox(
                      height: 8.h,
                    ),
                    columntext('Facebook'),
                    SizedBox(
                      height: 8.h,
                    ),
                    columntext('Twitter'),
                    SizedBox(
                      height: 8.h,
                    ),
                    columntext('Instagram'),
                    SizedBox(
                      height: 8.h,
                    ),
                    columntext('Youtube'),
                    SizedBox(
                      height: 8.h,
                    ),
                    columntext('Shop')
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    columnheading('About Us'),
                    SizedBox(
                      height: 10.h,
                    ),
                    columntext('Privacy Policy'),
                    SizedBox(
                      height: 8.h,
                    ),
                    columntext('Licenses'),
                    SizedBox(
                      height: 8.h,
                    ),
                    columntext('AML Policy'),
                    SizedBox(
                      height: 8.h,
                    ),
                    columntext('Terms of Services'),
                    SizedBox(
                      height: 8.h,
                    ),
                    columntext('Self Exclusion'),
                    SizedBox(
                      height: 8.h,
                    ),
                    columntext('Primedice'),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    columnheading('Sports'),
                    SizedBox(
                      height: 10.h,
                    ),
                    columnheading('English'),
                    SizedBox(
                      height: 10.h,
                    ),
                    columnheading('Odds'),
                    SizedBox(
                      height: 10.h,
                    ),
                    columnheading('Decimal')
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          Container(
            height: 560.h,
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Color(0xff0a1720),
                image: DecorationImage(
                    image: AssetImage(
                      'assets/images/bottom1.PNG',
                    ),
                    fit: BoxFit.cover)),
          ),
          Container(
            height: 250.h,
            width: double.infinity,
            decoration: const BoxDecoration(
                // color: Colors.yellow,
                // image: DecorationImage(
                //     image: AssetImage(
                //       'assets/images/bottom1.PNG',
                //     ),
                //     fit: BoxFit.cover)
                ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 40.h,
                ),
                Text(
                  "Crypto Sports",
                  style: TextStyle(
                      fontSize: 9.sp,
                      fontStyle: FontStyle.italic,
                      color: whiteColor,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20.h,
                ),
                columntext('2023 Crypto Sports All Rights Reserved.'),
                SizedBox(
                  height: 20.h,
                ),
                columntext("1 BTC = \$26,062.03"),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            height: 360.h,
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Color(0xff0a1720),
                image: DecorationImage(
                    image: AssetImage(
                      'assets/images/bottom2.PNG',
                    ),
                    fit: BoxFit.cover)),
          ),
        ],
      ),
    );
  }
}

Widget columntext(String text) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 4.sp,
      fontWeight: FontWeight.w400,
      color: const Color(0xffa2acca),
    ),
  );
}

Widget columnheading(String text) {
  return Text(
    text,
    style: TextStyle(
        fontSize: 4.sp, color: whiteColor, fontWeight: FontWeight.bold),
  );
}
