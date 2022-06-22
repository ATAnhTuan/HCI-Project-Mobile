import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screen/Home/HomeScreen.dart';

class SignUpSuccess extends StatelessWidget{
  static String routeName ="/signup_success";
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Center(
          child: Text(
            "",
            style: TextStyle(color: Color(0xFF8D8D8D)),
          ),
        ),
      ),
        body: Column(
          children: [

            Image.asset("assets/imgaes/welcome.png"
            ),

            Text("Sign Up Successful",style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
            ),
            Spacer(),
            Hero(
              tag: "home_btn",
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),),
                onPressed: () { Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
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