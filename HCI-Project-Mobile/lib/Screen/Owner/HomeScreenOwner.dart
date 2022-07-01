import 'dart:math';
import 'package:flutter_application_1/Screen/Home/Notification.dart';
import 'package:flutter_application_1/Screen/Owner/Edit.dart';
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
            ListItem(
              image: 'assets/images/govap.jpg',
              title: "  Sân Quân Gò Vấp",
            ),
            ListItem(
              image: 'assets/images/quan9.jpg',
              title: "  Sân Quận 9",
            ),
            ListItem(
              image: 'assets/images/quan1.jpg',
              title: "  Sân Quận 1",
            ),
            ListItem(
              image: 'assets/images/quan5.jpg',
              title: "  Sân Quận 5",
            ),
          ],
          ),
        ),
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String image;
  final String title;
  const ListItem({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Edit()));
        },
        child: Row(
          children: <Widget>[
            Column(
              children: [
                ClipRRect(
                  child: Image.asset(
                    image,
                    width: 80,
                    height: 80,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Row(
                  children: const [
                    Text("   2 Km  "),
                    Text("4.5"),
                    Icon(
                      Icons.star_outlined,
                      color: Colors.yellow,
                    )
                  ],
                ),
                Row(
                  children: const [
                    Icon(Icons.monetization_on_outlined),
                    Text("  200.000  VND"),
                  ],
                )
              ],
            ),
            Spacer(),
            Column(
              children: const [Icon(Icons.favorite_border_outlined)],
            )
          ],
        ),
      ),
    );
  }
}
