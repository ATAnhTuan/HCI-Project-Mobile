import 'package:Booking_san_bong/common/theme_helper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:Booking_san_bong/uidata.dart';
import 'package:Booking_san_bong/widgets/button.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  bool _isObscure = false;
  Widget build(BuildContext context) {
    var expanded = Expanded(
        child: Divider(
      color: Colors.grey,
      height: 1.5,
    ));
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        constraints: BoxConstraints.expand(),
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          "images/bong.png",
                          // width: size.width * 0.6,
                        ),
                        fit: BoxFit.contain)),
                height: MediaQuery.of(context).size.height * .15,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: Row(
                  children: [
                    Text(
                      "                    GoSport\n ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 30),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: TextField(
                  decoration: ThemeHelper().textInputDecoration(
                      "Tên tài khoản", "Nhập tên tài khoản... "),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: Stack(
                  alignment: AlignmentDirectional.centerEnd,
                  children: <Widget>[
                    TextField(
                      decoration: ThemeHelper().textInputPasswordDecoration(
                          "Mật Khẩu", "Nhập mật khẩu... "),
                      obscureText: true,
                    ),
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(250, 0, 0, 30),
                  child: Text.rich(TextSpan(
                      text: "Quên mật khẩu!",
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.pushNamed(
                              context, UIData.ForgotPassWordPageRoute);
                        }))),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: MyButton(
                    btnText: "Đăng nhập",
                    onpressed: () =>
                        Navigator.pushNamed(context, UIData.mainPageRoute)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 30, 40, 20),
                child: Container(
                  child: Row(
                    children: <Widget>[
                      expanded,
                      Text("OR",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      expanded,
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  elevation: 0,
                  minWidth: double.maxFinite,
                  height: 42,
                  onPressed: () {
                    //Here goes the logic for Google SignIn discussed in the next section
                    Navigator.pushNamed(context, UIData.mainPageRoute);
                  },
                  color: Colors.green,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(FontAwesomeIcons.facebook, color: Colors.blue),
                      SizedBox(width: 10),
                      Text('Đăng nhập với Facebook',
                          style: TextStyle(color: Colors.white, fontSize: 16)),
                    ],
                  ),
                  textColor: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  elevation: 0,
                  minWidth: double.maxFinite,
                  height: 42,
                  onPressed: () {
                    //Here goes the logic for Google SignIn discussed in the next section
                    Navigator.pushNamed(context, UIData.mainPageRoute);
                  },
                  color: Colors.green,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(FontAwesomeIcons.google, color: Colors.red[400]),
                      SizedBox(width: 10),
                      Text('Đăng nhập với Google',
                          style: TextStyle(color: Colors.white, fontSize: 16)),
                    ],
                  ),
                  textColor: Colors.white,
                ),
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: Container(
                    height: 130,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(35, 0, 0, 30),
                          child: Text.rich(TextSpan(children: [
                            TextSpan(
                                text: "Bạn chưa có tài khoản? ",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16)),
                            TextSpan(
                                text: "Đăng kí người dùng!",
                                style: TextStyle(
                                    color: Colors.blueAccent,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.pushNamed(
                                        context, UIData.registerPageRoute);
                                  }),
                            TextSpan(
                                text: "\n                     Đăng kí chủ sân!",
                                style: TextStyle(
                                    color: Colors.blueAccent,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.pushNamed(
                                        context, UIData.registerHostPageRoute);
                                  }),
                          ])),
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }

  void onSignInClicked() {}
}
