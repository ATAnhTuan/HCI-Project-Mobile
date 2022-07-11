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
              money: "200.000 VND",
            ),
            ListItem(
              image: 'assets/images/quan9.jpg',
              title: "  Sân Quận 9",
              
              money: "250.000 VND",
            ),
            ListItem(
              image: 'assets/images/quan1.jpg',
              title: "  Sân Quận 1",
              money: "250.000 VND",
            ),
            ListItem(
              image: 'assets/images/quan5.jpg',
              title: "  Sân Quận 5",
              money: "300.000 VND",
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
  final String money;
  const ListItem({
    Key? key,
    required this.image,
    required this.title, required this.money,
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
                Padding(
                  padding: const EdgeInsets.only( left:10.0),
                  child: Row(

                    children: const [
                      Text("4.5"),
                      Icon(
                        Icons.star_outlined,
                        color: Colors.yellow,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Icon(Icons.monetization_on_outlined),
                      Text(money),
                    ],
                  ),
                )
              ],
            ),
            Spacer(),
            Column(
              
              children: [
                IconButton
                (
                  onPressed: (){}, icon: Icon(Icons.delete_forever_outlined))
                ],
            )
          ],
        ),
      ),
    );
  }
}
