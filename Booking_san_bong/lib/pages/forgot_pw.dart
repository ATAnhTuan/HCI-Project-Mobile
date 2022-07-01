import 'package:flutter/material.dart';
import 'package:Booking_san_bong/uidata.dart';
import 'package:Booking_san_bong/widgets/button.dart';

class ForgotPassWordPage extends StatefulWidget {
  @override
  _ForgotPassWordPageState createState() => _ForgotPassWordPageState();
}

class _ForgotPassWordPageState extends State<ForgotPassWordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

          body: Container(
            padding:EdgeInsets.fromLTRB(30, 0, 30, 0),
            constraints: BoxConstraints.expand(),
            color: Colors.white,
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                children:<Widget>[
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
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 30,),
                    child: Text( "Quên Mật Khẩu? ",
                    style: TextStyle(
                        fontWeight:FontWeight.bold,
                        color: Colors.black,
                        fontSize: 30),
                        ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0,10),
                    child: Text( "Nhập tên đăng nhập/email tại đây",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20),
                        ),
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0,0,0, 60),
                    child: TextField(
                      style: TextStyle(fontSize:18, color: Colors.black) ,
                      decoration: InputDecoration(
                        labelText: "TÊN ĐĂNG NHẬP/ EMAIL",
                        
                        labelStyle: TextStyle(color: Color(0xff888888),fontSize: 15)),
                    ),
                  ),
            
                    Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                          child: MyButton(
                            btnText: "Tiếp Tục",
                            onpressed: () =>
                              Navigator.pushNamed(context, UIData.verifyEmailPageRouter)),
                  ),
                ],
                ),
            ),
          ),
    );
  }
  void onSignInClicked(){}
}
