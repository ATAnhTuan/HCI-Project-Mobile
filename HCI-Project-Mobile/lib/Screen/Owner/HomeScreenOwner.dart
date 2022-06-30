import 'dart:math';
import 'package:flutter_application_1/Screen/Home/Notification.dart';
import 'package:flutter_application_1/Screen/setting/SettingScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screen/Home/BottomBar.dart';
import 'package:flutter_application_1/Screen/setting/Yeuthich.dart';
import 'package:flutter_application_1/Screen/Home/Santhuduc.dart';

class HomeScreenOwner extends StatelessWidget {
  const HomeScreenOwner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: const EdgeInsets.only(top: 25),
            child: SingleChildScrollView(
                child: Column(children: [
              Container(
                color: Colors.green[400],
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Notifi()));
                      },
                      icon: Icon(Icons.notifications),
                      color: Colors.white,
                    ),
                    Spacer(),
                    Text(
                      "Trang Chủ",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.w700),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SettingWidget()));
                      },
                      icon: Icon(Icons.menu),
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ]))));
  }
}
