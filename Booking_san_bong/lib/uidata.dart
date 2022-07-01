import 'package:flutter/material.dart';

class UIData {
  static const String homePageRoute = "/homePageRoute";
  static const String introPageRoute = "/introPageRoute";
  static const String bookPageRoute = "/bookPageRoute";
  static const String registerPageRoute = "/RegisterPage";
  static const String ForgotPassWordPageRoute = "/ForgotPassWordPage";
  static const String registerHostPageRoute = "/RegisterHostPage";
  static const String notificationPageRoute = "/notificationPage";
  static const String profilePageRoute = "/profilePageRoute";
  static const String confirmPageRoute = "/confirmPageRoute";
  static const String detailPageRoute = "/DetailPage";
  static const String mainPageRoute = "/MainPage";
  static const String notificationHostPageRoute = "/notificationHostPage";
  static const String mainHostPageRoute = "/MainHostPage";
  static const String historyPageRoute = "/HistoryPage";
  static const String sreachPageRoute = "/SreachPage";
  static const String verifyEmailPageRouter = "/VerifyEmailPage";
  static const String detailHostPageRoute = "/detailHostPage";
  static const String authenPageRoute = "/authenPage";
  static const String homeHostPageRoute = "/homeHost_Page";
  static const String setupGroundPageRoute = "/SetUpPage";
  static const String addSetUpTimePageRoute = "/addSetUpTimePageRoute";
  static const String myAccount = "/MyAccount";
  static const String addchildGroundPageRouter = "/AddchildGround";
  static const String editTimePageRoute = "/EditTimePage";


  //Colors
  static const Color mainColor = Colors.green;
  static const Color lightColor = Color.fromRGBO(252, 223, 228, 1);
  static const Color lighterColor = Color.fromRGBO(254, 248, 240, 1);
  static const darkColor = Colors.yellow;


   static const purpleGradient = LinearGradient(
  colors: <Color>[darkColor],
  stops: [0.0, 0.5, 1.0],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
  );
   static const redGradient = LinearGradient(
  colors: <Color>[darkColor],
  stops: [0.0, 1.0],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,

);
  static const USER_IMAGE='https://cdn4.iconfinder.com/data/icons/people-avatar-flat-1/64/girl_chubby_beautiful_people_woman_lady_avatar-512.png';
}
