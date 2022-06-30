import 'package:flutter/material.dart';
import '../OTP/OTPScreen.dart';

class ForgetPasswordScreen extends StatelessWidget{
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
              child: Image.asset("assets/images/quenmatkhau.png"),
            ),
            const Spacer(),
          ],
        ),
          Padding(
            padding: EdgeInsets.only(left: 25),
            child: Row(
              children: const [
                Text(
                  "Quên mật khẩu?",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),

              ],

            ),

          ),
          Padding(
            padding: EdgeInsets.only(left: 25),
            child: Row(
              children: const [
                Text(
                  "Nhập email khôi phục tài khoản",
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
                prefixIcon: Icon(Icons.account_circle_outlined),
                labelText: 'Email',
              ),
            ),
          ),
          Text(""),
          Hero(
            tag: "login_btn",
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
                    MaterialPageRoute(builder: (context) => OTPScreen()),
                  );
                },
                child: Text(
                  "Tiếp tục".toUpperCase(),
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