import 'package:casino_app/Const/color.dart';
import 'package:casino_app/View/account_setting/account_setting.dart';
import 'package:casino_app/View/casino_games/casino_games.dart';
import 'package:casino_app/View/home_screen/home_screen.dart';
import 'package:casino_app/View/live_batting/live_batting.dart';
import 'package:casino_app/View/sports_game/sports_game.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NavigationBarr extends StatefulWidget {
  const NavigationBarr({super.key});

  @override
  State<NavigationBarr> createState() => _NavigationBarrState();
}

class _NavigationBarrState extends State<NavigationBarr> {
  int currentPage = 0;

  List<Widget> pages = const [
    HomeScreen(),
    LiveBatting(),
    CasinoGames(),
    SportsGame(),
    AccountSetting(),
  ];
  // var page = HomeScreen();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPage],
      bottomNavigationBar: CurvedNavigationBar(
        // key: _bottomNavigationKey,
        // index: 0,
        height: 50.0,
        items: <Widget>[
          Image.asset(
            'assets/images/home.png',
            width: 25.w,
            height: 25.h,
          ),

          Image.asset(
            'assets/images/ive.png',
            width: 25.w,
            height: 25.h,
          ),
          // Icon(
          //   Icons.home,
          //   size: 30,
          //   color: Color(0xffd9d9e2),
          // ),
          // Icon(
          //   Icons.favorite_rounded,
          //   size: 30,
          //   color: Color(0xffd9d9e2),
          // ),

          // CircleAvatar(
          //   foregroundColor: Colors.tealAccent,
          //   radius: currentPage == 2 ? 40 : 25,
          //   //  backgroundColor: Colors.red,
          //   backgroundColor: Colors.transparent,
          //   backgroundImage: const AssetImage(
          //     'assets/images/search.png',
          //   ),
          // ),
          Image.asset(
            'assets/images/casinoa.png',
            width: 25.w,
            height: 25.h,
          ),
          // Icon(Icons.search, size: 30, color: Color(0xffd9d9e2)),
          // Icon(Icons.notifications, size: 30, color: Color(0xffd9d9e2)),
          Image.asset(
            'assets/images/game.png',
            width: 25.w,
            height: 25.h,
          ),
          Image.asset(
            'assets/images/setting.png',
            width: 25.w,
            height: 25.h,
          ),

          // Icon(Icons.person, size: 30, color: Color(0xffd9d9e2)),
        ],
        onTap: ((index) {
          print(index);
          setState(() {
            currentPage = index;
          });
        }),
        color: secondary,
        buttonBackgroundColor: buttoncolor,

        backgroundColor: primary,
        // animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 600),
      ),
    );
  }
}
