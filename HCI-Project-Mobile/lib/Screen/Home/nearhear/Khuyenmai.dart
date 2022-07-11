import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screen/Home/Santhuduc.dart';


class Khuyenmai extends StatelessWidget {
  const Khuyenmai({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Sân Giảm Giá"),
        backgroundColor: Colors.green[400],
        ),
        body: Column(
        children: const [
          ListItem(
            image: 'assets/images/govap.jpg',
            title: "  Sân Quân Gò Vấp",
                        km: "500 m",
            star: "4.0",
          ),
          ListItem(
            image: 'assets/images/quan9.jpg',
            title: "  Sân Quận 9",
                        km: "500 m",
            star: "4.0",
          ),
          ListItem(
            image: 'assets/images/quan1.jpg',
            title: "  Sân Quận 1",
                        km: "500 m",
            star: "4.0",
          ),
          ListItem(
            image: 'assets/images/quan5.jpg',
            title: "  Sân Quận 5",
                        km: "500 m",
            star: "4.0",
          ),
        ],
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String image;
  final String title;
  final String km,star;
  const ListItem({
    Key? key,
    required this.image,
    required this.title, required this.km, required this.star,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const FootballField()));
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
                  children:  [
                    Text(km),
                    Text(star),
                    Icon(Icons.star_outlined,color: Colors.yellow,) 
                  ],
                ),
                Row(
                  children: const [
                    Icon(Icons.monetization_on_outlined),
                    Text("  300.000  VND", style: TextStyle(decoration: TextDecoration.lineThrough),),
                    Text("  200.000  VND", style: TextStyle(color: Colors.red),),
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