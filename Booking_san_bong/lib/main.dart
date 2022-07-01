import 'package:Booking_san_bong/pages/addchildGround.dart';
import 'package:Booking_san_bong/pages/confirm.dart';
import 'package:Booking_san_bong/pages/detail_host.dart';
import 'package:Booking_san_bong/pages/editTime.dart';
import 'package:Booking_san_bong/pages/forgot_pw.dart';
import 'package:Booking_san_bong/pages/home_host.dart';
import 'package:Booking_san_bong/pages/main.dart';
import 'package:Booking_san_bong/pages/mainhost.dart';
import 'package:Booking_san_bong/pages/myAccount.dart';
import 'package:Booking_san_bong/pages/notificationHost.dart';
import 'package:Booking_san_bong/pages/setupGround.dart';
// import 'package:Booking_san_bong/pages/home_host.dart';
import 'package:Booking_san_bong/pages/verify_email.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:Booking_san_bong/pages/book.dart';
import 'package:Booking_san_bong/pages/home.dart';
import 'package:Booking_san_bong/pages/login.dart';
import 'package:Booking_san_bong/pages/register.dart';
import 'package:Booking_san_bong/pages/registerhost.dart';
import 'package:Booking_san_bong/pages/notification.dart';
import 'package:Booking_san_bong/pages/profile.dart';
import 'package:Booking_san_bong/pages/authen.dart';
import 'package:Booking_san_bong/pages/addSetUpTime.dart';
import 'package:Booking_san_bong/uidata.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Booking san bong',
        theme: ThemeData(
          textTheme: GoogleFonts.ubuntuTextTheme(Theme.of(context).textTheme),
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: LoginPage(),
        routes: <String, WidgetBuilder>{
          UIData.homePageRoute: (BuildContext context) => HomePage(),
          UIData.introPageRoute: (BuildContext context) => LoginPage(),
          UIData.bookPageRoute: (BuildContext context) => BookPage(),
          UIData.registerPageRoute: (BuildContext context) => RegisterPage(),
          UIData.ForgotPassWordPageRoute: (BuildContext context) =>
              ForgotPassWordPage(),
          UIData.registerHostPageRoute: (BuildContext context) =>
              RegisterHostPage(),
          UIData.notificationPageRoute: (BuildContext context) =>
              notificationPage(),
           UIData.notificationHostPageRoute: (BuildContext context) =>
              notificationHostPage(),
          UIData.profilePageRoute: (BuildContext context) =>
              ProfilePage(),
          UIData.confirmPageRoute: (BuildContext context) =>
              ConfirmPage(),
          // UIData.ho: (BuildContext context) => DetailPage(),
          UIData.verifyEmailPageRouter: (BuildContext context) => VerifyEmailPage(),
          UIData.mainPageRoute: (BuildContext context) => MainPage(),
          UIData.detailHostPageRoute: (BuildContext context) => DetailHostPage(),
           UIData.authenPageRoute: (BuildContext context) => AuthenPage(),
          UIData.mainHostPageRoute: (BuildContext context) => MainHostPage(),
          UIData.homeHostPageRoute: (BuildContext context) => HomeHost_Page(),
          UIData.setupGroundPageRoute: (BuildContext context) => SetUpPage(),
          UIData.addSetUpTimePageRoute: (BuildContext context) => AddSetUpTimePage(),
          UIData.myAccount: (BuildContext context) => MyAccount(),
          UIData.addchildGroundPageRouter:(BuildContext context) => addchildGroundPage(),

          UIData.editTimePageRoute:(BuildContext context) => EditTimePage(),
        });
  }
}
