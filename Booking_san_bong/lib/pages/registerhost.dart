import 'package:Booking_san_bong/common/theme_helper.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:Booking_san_bong/uidata.dart';
import 'package:Booking_san_bong/widgets/button.dart';
import 'package:Booking_san_bong/widgets/button3.dart';
import 'package:Booking_san_bong/widgets/button4.dart';

class RegisterHostPage extends StatefulWidget {
  @override
  _RegisterHostPage createState() => _RegisterHostPage();
}

class _RegisterHostPage extends State<RegisterHostPage> {
  @override
  Widget build(BuildContext context) {
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
                      child: Text("Nhập Thông tin chủ sân!",style: TextStyle(color: Colors.green,fontSize: 24,fontStyle: FontStyle.normal),),),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                      child: TextField(
                          decoration: ThemeHelper().textInputDecoration("Tên tài khoản","Nhập tên tài khoản... "),
                      ),
              ),          
              Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                      child: Stack(
                        alignment: AlignmentDirectional.centerEnd,
                        children: <Widget>[
                          TextField(
                         
                            decoration:                  
                              ThemeHelper().textInputPasswordDecoration("Mật Khẩu", "Nhập mật khẩu... "),                     
                              obscureText: true,           
                           ),
                        ],
                      ),
              ),
              Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                      child: Stack(
                        alignment: AlignmentDirectional.centerEnd,
                        children: <Widget>[
                          TextField(
                         
                            decoration:                  
                              ThemeHelper().textInputPasswordDecoration("Xác Nhận Mật Khẩu", "Nhập lại mật khẩu... "),                     
                              obscureText: true,           
                           ),
                        ],
                      ),
              ),
              Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                      child: TextField(
                          decoration: ThemeHelper().textInputDecoration("Nhập Số Điện Thoại","Nhập số điện thoại... "),
                      ),
              ),
              Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                      child: TextField(
                          decoration: ThemeHelper().textInputDecoration("Nhập Email","Nhập email... "),
              ),
              ),
              Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                      child: TextField(
                          decoration: ThemeHelper().textInputDecoration("Nhập địa chỉ","Nhập địa chỉ... "),
                      ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: MyButton(
                    btnText: "ĐĂNG KÝ CHỦ SÂN",
                    onpressed: () =>
                        Navigator.pushNamed(context, UIData.introPageRoute)),
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
                          padding: const EdgeInsets.fromLTRB(35, 20, 0, 30),
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan( text: "Bạn đã có tài khoản? ",style: TextStyle(color: Colors.black, fontSize: 16)),
                                TextSpan(
                                  text: "Đăng nhập tại đây!",
                                  style: TextStyle(color: Colors.blueAccent, fontSize: 16,fontWeight: FontWeight.bold),
                                  recognizer: TapGestureRecognizer()
                                  ..onTap = (){
                                    Navigator.pushNamed(context, UIData.introPageRoute);
                                  }
                                ),                               
                              ]
                            )
                          ),
                        
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
