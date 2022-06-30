import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screen/Home/Santhuduc.dart';


class Yeuthich extends StatelessWidget {
  const Yeuthich({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Yêu Thích"),
        backgroundColor: Colors.green[400],
        ),
        body: Column(
        children: [
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
                  children: [
                    Text("   2 Km  "),
                    Text("4.5"),
                    Icon(Icons.star_outlined,color: Colors.yellow,) 
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.monetization_on_outlined),
                    Text("  200.000  VND"),
                  ],
                )
              ],
            ),
            Spacer(),
            Column(
              children: [Icon(Icons.favorite_border_outlined)],
            )
          ],
        ),
      ),
    );
  }
}