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
                      child: Text("Nh???p Th??ng tin ch??? s??n!",style: TextStyle(color: Colors.green,fontSize: 24,fontStyle: FontStyle.normal),),),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                      child: TextField(
                          decoration: ThemeHelper().textInputDecoration("T??n t??i kho???n","Nh???p t??n t??i kho???n... "),
                      ),
              ),          
              Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                      child: Stack(
                        alignment: AlignmentDirectional.centerEnd,
                        children: <Widget>[
                          TextField(
                         
                            decoration:                  
                              ThemeHelper().textInputPasswordDecoration("M???t Kh???u", "Nh???p m???t kh???u... "),                     
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
                              ThemeHelper().textInputPasswordDecoration("X??c Nh???n M???t Kh???u", "Nh???p l???i m???t kh???u... "),                     
                              obscureText: true,           
                           ),
                        ],
                      ),
              ),
              Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                      child: TextField(
                          decoration: ThemeHelper().textInputDecoration("Nh???p S??? ??i???n Tho???i","Nh???p s??? ??i???n tho???i... "),
                      ),
              ),
              Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                      child: TextField(
                          decoration: ThemeHelper().textInputDecoration("Nh???p Email","Nh???p email... "),
              ),
              ),
              Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                      child: TextField(
                          decoration: ThemeHelper().textInputDecoration("Nh???p ?????a ch???","Nh???p ?????a ch???... "),
                      ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: MyButton(
                    btnText: "????NG K?? CH??? S??N",
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
                                TextSpan( text: "B???n ???? c?? t??i kho???n? ",style: TextStyle(color: Colors.black, fontSize: 16)),
                                TextSpan(
                                  text: "????ng nh???p t???i ????y!",
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
