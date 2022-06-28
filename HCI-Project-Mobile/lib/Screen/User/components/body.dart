import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screen/User/components/button.dart';
import 'package:flutter_application_1/Screen/User/components/user_details.dart';
import 'package:flutter_application_1/Screen/User/components/user_pic.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              UserPic(),
              SizedBox(
                height: 35,
              ),
              Container(
                child: Column(
                  children: [
                    UserDetails(
                      icon: Icons.person,
                      labelText: "Họ và Tên",
                      placeholder: "Trần Gia Hoàng",
                      isBirthDay: false,
                    ),
                    UserDetails(
                      icon: Icons.email_rounded,
                      labelText: "Email",
                      placeholder: "hoangtgse@gmail.com",
                      isBirthDay: false,
                    ),
                    UserDetails(
                      icon: Icons.phone,
                      labelText: "Số điện thoại",
                      placeholder: "+84987654321",
                      isBirthDay: false,
                    ),
                    UserDetails(
                      icon: Icons.cake,
                      labelText: "Ngày sinh",
                      placeholder: "1/1/2000",
                      isBirthDay: true,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 55,
              ),
              Button(),
            ],
          ),
        ),
      ),
    );
  }
}
