import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screen/Home/Santhuduc.dart';


class Ganday extends StatelessWidget {
  const Ganday({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Sân Gần Đây"),
        backgroundColor: Colors.green[400],
        ),
        body: Column(
        children: const [
          ListItem(
            image: 'assets/images/govap.jpg',
            title: "Sân Quân Gò Vấp",
            km: "500 m",
            star: "4.0",
          ),
          ListItem(
            image: 'assets/images/quan9.jpg',
            title: "Sân Quận 9",
                        km: "600 m",
            star: "4.1",
          ),
          ListItem(
            image: 'assets/images/quan1.jpg',
            title: "Sân Quận 1",
                        km: "700 m",
            star: "4.5",
          ),
          ListItem(
            image: 'assets/images/quan5.jpg',
            title: "Sân Quận 5",
                        km: "900 m",
            star: "4.2",
          ),
        ],
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String image,km,star;
  final String title;
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
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
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(star),
                      ),
                      Icon(Icons.star_outlined,color: Colors.yellow,) 
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