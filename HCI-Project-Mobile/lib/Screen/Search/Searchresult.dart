import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screen/Home/Santhuduc.dart';

class Searchresult extends StatelessWidget {
  const Searchresult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        title: Text("Search")),
      body: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const FootballField()));
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              Column(
                children: [
                  ClipRRect(
                    child: Image.asset(
                      "assets/images/quan9.jpg",
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
                    "Sân Quận 9",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Row(
                    children: [
                      Text("   2 Km  "),
                      Text("4.5"),
                      Icon(
                        Icons.star_outlined,
                        color: Colors.yellow,
                      )
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
      ),
    );
  }
}
