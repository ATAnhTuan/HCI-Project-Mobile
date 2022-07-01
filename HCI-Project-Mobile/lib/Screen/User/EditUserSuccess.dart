import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screen/Home/BottomBar.dart';
import 'package:flutter_application_1/Screen/Home/HomeScreen.dart';

class EditUserSuccess extends StatelessWidget{
  static String routeName ="/edit_user_success";
  @override
  Widget build(BuildContext context){
    return Scaffold(

      body: Column(
        children: [
          Spacer(),
          Image.asset("assets/images/hurray.png"
          ),

          Text("Cập nhật hồ sơ thành công",style: TextStyle(
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
                MaterialPageRoute(builder: (context) => HomeScreen()),
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