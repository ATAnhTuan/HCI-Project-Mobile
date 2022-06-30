import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screen/Home/Datlich.dart';

class Chonsan extends StatelessWidget {
  const Chonsan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        title: Text("Chọn Sân")),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: const [
                    List2Items(
                    title1: "Sân 1",
                    title2: "Sân 2",
                    image1: "assets/images/govap.jpg",
                    image2: "assets/images/quan9.jpg"),
                    List2Items(
                    title1: "Sân 3",
                    title2: "Sân 4",
                    image1: "assets/images/quan1.jpg",
                    image2: "assets/images/quan5.jpg"),
            ],
            
          ),
        ),
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
    return SizedBox(
        height: 230,
        child: Padding(
          padding: const EdgeInsets.only(top: 10,bottom: 10),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Item(tile: title1, image: image1,people: "Sân 5",price: "200.000"),
              ),
              Expanded(
                child: Item(tile: title2, image: image2, people: "Sân 7",price: "3500.000",),
              )
            ],
          ),
        ));
  }
}

class Item extends StatelessWidget {
  final String tile;
  final String image;
  final String people;
  final String price;
  const Item({
    Key? key,
    required this.tile,
    required this.image, required this.people, required this.price,
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
                        MaterialPageRoute(builder: (context) => DatLich()));
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
                  Text(people,
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  Icon(
                    Icons.person,
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
                  Text(
                    price,
                    style: TextStyle(color: Colors.black),
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