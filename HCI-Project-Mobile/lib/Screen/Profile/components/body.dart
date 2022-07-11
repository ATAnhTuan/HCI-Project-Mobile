import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screen/Login/LoginScreen.dart';
import 'package:flutter_application_1/Screen/setting/danhgia.dart';
import 'package:flutter_application_1/Screen/setting/Lichsu.dart';
import '../../setting/SettingScreen.dart';
import '../LogoutSuccess.dart';
import 'profile_menu.dart';
import 'profile_pic.dart';
import '../../User/UserScreen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          ProfilePic(),
          SizedBox(height: 20),
          buildname(),
          SizedBox(height: 20),
          ProfileMenu(
            text: "Chỉnh sửa hồ sơ",
            icon: "assets/icons/User.svg",
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const UserScreen()));
            },
          ),
          ProfileMenu(
            text: "Lịch sử giao dịch",
            icon: "assets/icons/Cash.svg",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Lichsu()),
              );
            },
          ),
          ProfileMenu(
            text: "Cài đặt",
            icon: "assets/icons/Settings.svg",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SettingWidget()),
              );
            },
          ),
          ProfileMenu(
            text: "Trung tâm trợ giúp khách hàng",
            icon: "assets/icons/Question mark.svg",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Danhgia()),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget buildname() {
    return Column(
      children: const [
        Text(
          "Trần Gia Hoàng",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 5),
        Text(
          "hoangtgse140280@gmail.com",
          style: TextStyle(color: Colors.grey),
        ),
      ],
    );
  }
}
