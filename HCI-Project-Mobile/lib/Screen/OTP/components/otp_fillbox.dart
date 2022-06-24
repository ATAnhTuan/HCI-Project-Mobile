import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screen/Home/HomeScreen.dart';
import 'package:otp_screen/otp_screen.dart';

Future<String?> validateOtp(String otp) async {
  await Future.delayed(Duration(milliseconds: 2000));
  if (otp == "1234") {
    return null;
  } else {
    return "The entered Otp is wrong";
  }
}

// action to be performed after OTP validation is success
void moveToNextScreen(context) {
  Navigator.push(context, MaterialPageRoute(
      builder: (context) => HomeScreen()));
}
  class OTPfillbox  extends StatelessWidget{
@override
Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    // initialize the OTP screen by passing validation logic and route callback
    home: OtpScreen(
      otpLength: 4,
      validateOtp: validateOtp,
      routeCallback: moveToNextScreen,
      titleColor: Colors.black,
      themeColor: Colors.black,
    ),
  );
}
}
