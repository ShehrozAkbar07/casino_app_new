import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../../AppRoutes/routes.dart';
import '../../Const/color.dart';
import '../../Const/const.dart';
import '../../Const/dimensions.dart';
import '../../Widgets/custom_buton.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final int numPages = 3;
  final PageController pageController = PageController(initialPage: 0);
  int currentPage = 0;

  List<Widget> buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < numPages; i++) {
      list.add(i == currentPage ? indicator(true) : indicator(false));
    }
    return list;
  }

  Widget indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: isActive ? Dimens.width6 : Dimens.width2,
      decoration: BoxDecoration(
        color: isActive ? Colors.blue : whiteColor,
        borderRadius: BorderRadius.all(Radius.circular(Dimens.width1)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        // backgroundColor: primary,
        body: Container(
          decoration: const BoxDecoration(color: primary),
          child: Column(
            children: [
              Container(
                color: Colors.transparent,
                height: Dimens.height / 1.2,
                child: PageView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  controller: pageController,
                  onPageChanged: (int page) {
                    setState(() {
                      currentPage = page;
                    });
                  },
                  children: [
                    Stack(
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            color: Colors.transparent,
                            height: Dimens.height / 9.1,
                            child: ListView(
                              physics: NeverScrollableScrollPhysics(),
                              children: [
                                SizedBox(
                                  height: 2.h,
                                ),
                                SizedBox(
                                  height: Dimens.height1,
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: size.height * 0.02),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: buildPageIndicator(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: size.height * 0.03,
                          ),
                          child: Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding:
                                    EdgeInsets.symmetric(horizontal: padding),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 70.h,
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                        height: 300.h,
                                        width: 270.w,
                                        // color: black,
                                        child: Image.asset(
                                            'assets/images/splash1.png'),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 40.h,
                                    ),
                                    Center(
                                      child: Text(
                                        'Welcome To CryptoSports',
                                        style: TextStyle(
                                            wordSpacing: 3,
                                            height: 1.3,
                                            color: whiteColor,
                                            fontSize: 22.sp,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 30.h,
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 25.w),
                                        child: Text(
                                          "Lorem ipsum dolor sit amet consectetur adipisicing elit.\nMaxime mollitia.",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            height: 1.4,
                                            fontSize: 17.sp,
                                            color: whiteColor,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )),
                        ),
                        // Align(
                        //   alignment: Alignment.bottomCenter,
                        //   child: Positioned(
                        //     top: 200,
                        //     child:
                        //   ),
                        // ),
                      ],
                    ),
                    Stack(
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            color: Colors.transparent,
                            height: Dimens.height / 9.1,
                            child: ListView(
                              physics: NeverScrollableScrollPhysics(),
                              children: [
                                SizedBox(
                                  height: 2.h,
                                ),
                                SizedBox(
                                  height: Dimens.height1,
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: size.height * 0.02),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: buildPageIndicator(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: size.height * 0.03,
                          ),
                          child: Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding:
                                    EdgeInsets.symmetric(horizontal: padding),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 70.h,
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                        height: 300.h,
                                        width: 270.w,
                                        // color: black,
                                        child: Image.asset(
                                            'assets/images/splash2.png'),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 40.h,
                                    ),
                                    Center(
                                      child: Text(
                                        'Make Your Own Bet',
                                        style: TextStyle(
                                            wordSpacing: 3,
                                            height: 1.3,
                                            color: whiteColor,
                                            fontSize: 22.sp,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 30.h,
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 25.w),
                                        child: Text(
                                          "Lorem ipsum dolor sit amet consectetur adipisicing elit.\nMaxime mollitia.",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            height: 1.4,
                                            fontSize: 17.sp,
                                            color: whiteColor,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )),
                        ),
                        // Align(
                        //   alignment: Alignment.bottomCenter,
                        //   child: Positioned(
                        //     top: 200,
                        //     child:
                        //   ),
                        // ),
                      ],
                    ),
                    Stack(
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            color: Colors.transparent,
                            height: Dimens.height / 9.1,
                            child: ListView(
                              physics: NeverScrollableScrollPhysics(),
                              children: [
                                SizedBox(
                                  height: 2.h,
                                ),
                                SizedBox(
                                  height: Dimens.height1,
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: size.height * 0.02),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: buildPageIndicator(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: size.height * 0.03,
                          ),
                          child: Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding:
                                    EdgeInsets.symmetric(horizontal: padding),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 70.h,
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                        height: 300.h,
                                        width: 270.w,
                                        // color: black,
                                        child: Image.asset(
                                            'assets/images/splash3.png'),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 40.h,
                                    ),
                                    Center(
                                      child: Text(
                                        'Get Started To Try Luck',
                                        style: TextStyle(
                                            wordSpacing: 3,
                                            height: 1.3,
                                            color: whiteColor,
                                            fontSize: 22.sp,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 30.h,
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 25.w),
                                        child: Text(
                                          "Lorem ipsum dolor sit amet consectetur adipisicing elit.\nMaxime mollitia.",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            height: 1.4,
                                            fontSize: 17.sp,
                                            color: whiteColor,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: InkWell(
                        onTap: () {
                          Get.toNamed(AppRoutes.login);
                        },
                        child: Text(
                          'Skip',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: whiteColor,
                              fontSize: 18.sp),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: InkWell(
                        onTap: () {
                          currentPage != 2
                              ? pageController.nextPage(
                                  duration: const Duration(microseconds: 900),
                                  curve: Curves.ease)
                              : Get.toNamed(AppRoutes.login);
                        },
                        // Get.toNamed(AppRoutes.login);

                        child: Text(
                          'Next',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: whiteColor,
                              fontSize: 18.sp),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 475.0);

    var secondCP = Offset(size.width / 1.15, size.height);
    var secondEP = Offset(size.width, size.height - 200.0);
    path.quadraticBezierTo(secondCP.dx, secondCP.dy, secondEP.dx, secondEP.dy);

    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
