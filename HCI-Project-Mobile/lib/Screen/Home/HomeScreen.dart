import 'dart:math';
import 'package:flutter_application_1/Screen/setting/SettingScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screen/Home/BottomBar.dart';
import 'Santhuduc.dart';
import 'BottomBar.dart';
import 'package:flutter_application_1/Screen/Home/Santhuduc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 25),
        child: SingleChildScrollView(child: Column(
          children: [
            Container(
              color: Colors.green[400],
              child: Row(
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.notifications), color: Colors.white,),
                  Spacer(),
                  Text(
                    "Trang Chủ",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  ),
                  Spacer(),
                  IconButton(onPressed: () {
                    Navigator.push(context,
                MaterialPageRoute(builder: (context) => const SettingWidget()));
                  }, icon: Icon(Icons.menu) , color: Colors.white,),
                ],
              ),
            ),
            ItemTitle(title: "Sân Có Sẵn"),
            List2Items(
                title1: "Sân Thủ Đức",
                image1: "assets/images/thuduc.png",
                title2: "Sân Quận 9",
                image2: "assets/images/quan9.jpg"),
            ItemTitle(title: "Nhiều Người Yêu Thích"),
            List2Items(
                title1: "Sân Gò Vấp",
                image1: "assets/images/govap.jpg",
                title2: "Sân Quận 2",
                image2: "assets/images/quan2.jpg"),
            ItemTitle(title: "Sân Đang Giảm Giá"),
            List2ItemsSale(
                title1: "Sân Quận 5",
                image1: "assets/images/quan5.jpg",
                title2: "Sân Quận 4",
                image2: "assets/images/quan4.jpg"),
          ],
        ), )
      ),
    );
  }
}

class List2Items extends StatelessWidget {
  final String title1, title2;
  final String image1, image2;
  const List2Items({
    Key? key,
    required this.title1,
    required this.title2,
    required this.image1,
    required this.image2,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      child: Row(
          children: <Widget>[
            Expanded(child: Item(tile: title1, image: image1),),
            Expanded(child: Item(tile: title2, image: image2),)
          ],
      )
    );
  }
}

class ItemTitle extends StatelessWidget {
  final String title;
  const ItemTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 5, top: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.red,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class Item extends StatelessWidget {
  final String tile;
  final String image;
  const Item({
    Key? key,
    required this.tile,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, left: 15, right: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        border: Border.all(color: Colors.blueGrey, width: 2),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const FootballField()));
          },
          child: Column(
            children: [
              Image.asset(
                image,
                height: 124,
                // width: 140,
              ),
              Text(
                tile,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
              Row(
                children: [
                  Text("4.5",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Spacer(),
                  Text("1Km",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  Icon(
                    Icons.location_on,
                    color: Colors.green[400],
                  )
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.money,
                    color: Colors.green[400],
                  ),
                  Spacer(),
                  Text("250.000"
                  ,style: TextStyle(
                    color: Colors.black
                  ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}




class List2ItemsSale extends StatelessWidget {
  final String title1, title2;
  final String image1, image2;
  const List2ItemsSale({
    Key? key,
    required this.title1,
    required this.title2,
    required this.image1,
    required this.image2,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      child: Row(
          children: <Widget>[
            Expanded(child: ItemSale(tile: title1, image: image1),),
            Expanded(child: ItemSale(tile: title2, image: image2),)
          ],
      )
    );
  }
}





class ItemSale extends StatelessWidget {
  final String tile;
  final String image;
  const ItemSale({
    Key? key,
    required this.tile,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, left: 15, right: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        border: Border.all(color: Colors.blueGrey, width: 2),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const FootballField()));
          },
          child: Column(
            children: [
              Image.asset(
                image,
                height: 124,
                // width: 140,
              ),
              Text(
                tile,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
              Row(
                children: [
                  Text("4.5",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Spacer(),
                  Text("1Km",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  Icon(
                    Icons.location_on,
                    color: Colors.green[400],
                  )
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.money,
                    color: Colors.green[400],
                  ),
                  Spacer(),
                  Text("250.000"
                  ,style: TextStyle(
                    color: Colors.red
                  ),
                  ),
                  Spacer(),
                  Text("300.000/h",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500,
                          decoration: TextDecoration.lineThrough
                          ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}