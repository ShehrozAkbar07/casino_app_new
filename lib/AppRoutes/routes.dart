import 'package:casino_app/View/Login/login.dart';
import 'package:casino_app/View/Onbaording%20Screen/onboard_screen.dart';
import 'package:casino_app/View/account_setting/account_setting.dart';
import 'package:casino_app/View/amount_deposit/amount_deposit.dart';
import 'package:casino_app/View/amount_withdraw/amount_withdraw.dart';
import 'package:casino_app/View/casino_games/casino_games.dart';
import 'package:casino_app/View/category_detail/category_detail.dart';
import 'package:casino_app/View/change_password/change_password.dart';
import 'package:casino_app/View/chat/chat.dart';
import 'package:casino_app/View/customer_support/customer_support.dart';
import 'package:casino_app/View/deposit_sucess/deposit_sucess.dart';
import 'package:casino_app/View/edit_personal_data/edit_personal_data.dart';
import 'package:casino_app/View/games_detail_page/games_detail_page.dart';
import 'package:casino_app/View/home_screen/home_screen.dart';
import 'package:casino_app/View/odds_screen/odds_screen.dart';
import 'package:casino_app/View/otp_verification/otp_verification.dart';
import 'package:casino_app/View/password_changed/password_changed.dart';
import 'package:casino_app/View/password_recovery/password_recovery.dart';
import 'package:casino_app/View/register/register.dart';
import 'package:casino_app/View/registeration_sucess.dart';
import 'package:casino_app/View/splash/splash.dart';
import 'package:casino_app/View/sports_game/sports_game.dart';
import 'package:casino_app/View/withdraw_success/withdraw_success.dart';
import 'package:casino_app/Web/game_detail/american_football.dart';
import 'package:casino_app/Web/game_detail/base_ball.dart';
import 'package:casino_app/Web/game_detail/basketball.dart';
import 'package:casino_app/Web/game_detail/soccer.dart';
import 'package:casino_app/Web/game_detail/squash.dart';
import 'package:casino_app/Web/game_detail/tennis.dart';
import 'package:casino_app/Web/general/general.dart';
import 'package:casino_app/Web/home/home.dart';
import 'package:casino_app/Web/profile/profile.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../View/live_batting/live_batting.dart';
import '../View/notifications/notification.dart';
import '../Web/game_detail/game_detail.dart';
import '../Widgets/bottom_nav_bar.dart';

class AppRoutes {
  static const String passrecovery = "/passrecovery";
  static const String depositsucess = "/depositsucess";
  static const String login = "/login";
  static const String onboard = "/onboard";
  static const String splash = "/splash";
  static const String register = "/register";
  static const String registerationsucess = "/registerationsucess";
  static const String otpverification = "/otpverification";
  static const String changepassword = "/changepassword";
  static const String passwordchanged = "/passwordchanged";
  static const String withdrawsucess = "/withdrawsucess";
  static const String accountsetting = "/accountsetting";
  static const String notifications = "/notifications";
  static const String homescreen = "/homescreen";
  static const String editpersonaldata = "/editpersonaldata";
  static const String amountwithdraw = "/amountwithdraw";
  static const String amountdeposit = "/amountdeposit";
  static const String customersupport = "/customersupport";
  static const String livebatting = "/livebatting";
  static const String sportsgame = "/sportsgame";
  static const String casinogames = "/casinogames";
  static const String categorydetail = "/categorydetail";
  static const String gamesdetails = "/gamesdetails";
  static const String odds = "/odds";
  static const String chats = "/chats";
  static const String navigationbar = "/navigationbar";
  static const String profile = "/profile";
  static const String general = "/general";
  static const String webhome = "/webhome";
  static const String gamedetails = "/gamedetails";
  static const String soccer = "/soccer";
  static const String basketball = "/basketball";
  static const String baseball = "/baseball";
  static const String squash = "/squash";
  static const String americanfootball = "/americanfootball";
  static const String tennis = "/tennis";

  static List<GetPage> appRoutes = [
    GetPage(name: tennis, page: () => const Tennis()),

    GetPage(name: americanfootball, page: () => const AmericanFootball()),

    GetPage(name: squash, page: () => const Squash()),

    GetPage(name: baseball, page: () => const BaseBall()),

    GetPage(name: basketball, page: () => const BasketBall()),

    GetPage(name: soccer, page: () => const Soccer()),
    // GetPage(name: gamedetails, page: () => const GameDetails()),
    GetPage(name: webhome, page: () => const Home()),
    GetPage(name: general, page: () => const General()),
    GetPage(name: profile, page: () => const Profile()),
    GetPage(name: navigationbar, page: () => const NavigationBarr()),
    GetPage(name: chats, page: () => const ChatScreen()),
    GetPage(name: odds, page: () => const OddScreen()),
    GetPage(name: gamesdetails, page: () => const GameDetailPage()),
    GetPage(
        name: categorydetail,
        page: () => CategoryDetail(
              categoryName: '',
            )),
    GetPage(name: casinogames, page: () => const CasinoGames()),
    GetPage(name: sportsgame, page: () => const SportsGame()),
    GetPage(name: livebatting, page: () => const LiveBatting()),
    GetPage(name: customersupport, page: () => const CustomerSupport()),
    GetPage(name: amountwithdraw, page: () => const AmountWithdraw()),
    GetPage(name: amountdeposit, page: () => const AmountDeposit()),
    GetPage(name: editpersonaldata, page: () => const EditPersonalData()),
    GetPage(name: homescreen, page: () => const HomeScreen()),
    GetPage(name: notifications, page: () => const Notifications()),
    GetPage(name: accountsetting, page: () => const AccountSetting()),
    GetPage(name: withdrawsucess, page: () => const WithdrawSucess()),
    GetPage(name: depositsucess, page: () => const DepostiSucess()),
    GetPage(name: passwordchanged, page: () => const PasswordChanged()),
    GetPage(name: changepassword, page: () => const ChangePassword()),
    GetPage(name: passrecovery, page: () => const PasswordRecovery()),
    GetPage(name: registerationsucess, page: () => const RegisterationSucess()),
    GetPage(name: otpverification, page: () => const OtpVerification()),
    GetPage(name: register, page: () => const Register()),
    GetPage(name: onboard, page: () => const OnBoardingScreen()),
    // GetPage(name: login, page: () => const Login()),
    GetPage(name: splash, page: () => const SplashScreen()),
  ];
}
