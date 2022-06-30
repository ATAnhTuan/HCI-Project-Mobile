import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screen/Login/LoginScreen.dart';

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
              children: const [
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
              children: const [
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
                prefixIcon: Icon(Icons.lock_outline),
                labelText: '******',
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
                  showDialog(context: context, builder: (context){
                    return AlertDialog(title: Text("Xác nhận" ),
                      content: Text("Thay đổi mật khẩu thành công"),
                    );
                  }
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