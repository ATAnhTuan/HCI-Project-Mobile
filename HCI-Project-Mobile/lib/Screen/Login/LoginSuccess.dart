import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screen/Home/BottomBar.dart';

class LoginSuccess extends StatelessWidget{
  static String routeName ="/login_success";
  @override
  Widget build(BuildContext context){
    return Scaffold(

        body: Column(
          children: [
            Spacer(),
            Image.asset("assets/images/welcome.png"
            ),

            Text("Đăng nhập thành công",style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.green, fontSize: 25
            ),
            ),
            Spacer(),
            Hero(
              tag: "home_btn",
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),),
                onPressed: () {Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const BottomBar()),
                );},
                child: Text(
                  "Đến trang chủ".toUpperCase(),
                ),
              ),
            ),
            Spacer(),
          ],
        ),
    );
  }
}