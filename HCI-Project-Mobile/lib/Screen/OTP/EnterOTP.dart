import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screen/ChangePassword/ChangePasswordScreen.dart';

class EnterOTP extends StatelessWidget{
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
              child: Image.asset("assets/images/Enter OTP-pana.png"),
            ),
            const Spacer(),
          ],
        ),
          Padding(
            padding: EdgeInsets.only(left: 25),
            child: Row(
              children: [
                Text(
                  "Nhập mã OTP",
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
                  "Nhập mã OTP từ điện thoại của bạn",
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
                prefixIcon: Icon(Icons.phone),
                labelText: 'Enter OTP here',
              ),
            ),
          ),
          Text(""),
          Hero(
            tag: "xacnhan_btn",
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

                    MaterialPageRoute(builder: (context) => ChangePassword()),

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