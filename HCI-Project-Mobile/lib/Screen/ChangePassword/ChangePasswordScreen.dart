import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screen/Home/HomeScreen.dart';
import 'package:flutter_application_1/Screen/Login/LoginScreen.dart';
import '../OTP/OTPScreen.dart';

class ChangePassword extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0, // 1
          iconTheme: IconThemeData(
              color: Colors.black

          )), //

      body: Column(
        children: [Row(
          children: [
            const Spacer(),
            Expanded(
              flex:5,
              child: Image.asset("assets/images/Enter OTP-cuate.png"),
            ),
            const Spacer(),
          ],
        ),
          Padding(
            padding: EdgeInsets.only(left: 25),
            child: Row(
              children: [
                Text(
                  "Thay đổi mật khẩu",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),

              ],

            ),

          ),
          Padding(
            padding: EdgeInsets.only(left: 25),
            child: Row(
              children: [
                Text(
                  "Nhập mật khẩu mới",
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
          ),
          Text(""),
          SizedBox(
            width: 350,

            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.password),
                labelText: '************',
              ),
            ),
          ),
          Text(""),
          Hero(
            tag: "confirm_btn",
            child: SizedBox(
              height: 35,
              width: 350,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                child: Text(
                  "Xác nhận".toUpperCase(),
                ),
              ),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}