import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screen/Home/Santhuduc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          leading: IconButton(onPressed: null, icon: Icon(Icons.notifications)),
          centerTitle: true,
          title: Text('Foot Ball App'),
          foregroundColor: Colors.white,
          backgroundColor: Colors.green[400]),
      body: Stack(
        children: <Widget>[
          TitleItem(),
          Items()
        ],
      ),
    );
  }
}

class TitleItem extends StatelessWidget {
  const TitleItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Container(
        child: Stack(
          children: <Widget>[
            Text(
              "Sân Có Sẵn",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.red,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}

class Items extends StatelessWidget {
  const Items({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Expanded(
          child: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        children: <Widget>[
          Available(
            images: "assets/images/thuduc.png",
            title: "Sân Thủ Đức",
          ),
          Available(
            images: "assets/images/quan9.jpg",
            title: "Sân Quận 9",
          )
        ],
      )),
    );
  }
}

class Available extends StatelessWidget {
  final String images;
  final String title;
  const Available({
    Key? key,
    required this.images,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          border: Border.all(color: Colors.blueGrey, width: 2)),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const FootballField()),
            );
          },
          child: Column(children: [Image.asset(images), Text(title)]),
        ),
      ),
    );
  }
}
