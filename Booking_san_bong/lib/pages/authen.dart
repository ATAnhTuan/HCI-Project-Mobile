import 'package:Booking_san_bong/common/theme_helper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:Booking_san_bong/uidata.dart';
import 'package:Booking_san_bong/widgets/button.dart';


class AuthenPage extends StatefulWidget {
  @override
  _AuthenPageState createState() => _AuthenPageState();
}

class _AuthenPageState extends State<AuthenPage> {
  @override
  bool _isObscure = false;
  Widget build(BuildContext context) {
    var expanded = Expanded(
                     child: Divider(color: Colors.grey, height: 1.5,)
                   );
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
                child: MyButton(
                    btnText: "Khách hàng",
                    onpressed: () =>
                        Navigator.pushNamed(context, UIData.mainPageRoute)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: MyButton(
                    btnText: "Chủ sân",
                    onpressed: () =>
                        Navigator.pushNamed(context, UIData.mainHostPageRoute)),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
