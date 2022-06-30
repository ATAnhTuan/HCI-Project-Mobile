import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screen/Chat/ChatScreen.dart';
import 'package:flutter_application_1/Screen/Home/Santhuduc.dart';

class Searchchat extends StatelessWidget {
  const Searchchat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tin Nhắn"),
            backgroundColor: Colors.green[400],),
      body: Container(
      padding: EdgeInsets.all(5),
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const ChatScreen()));
        },
        child: Row(
          children: <Widget>[
            Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    "assets/images/hoangtran.jpg",
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
                  "Sân Quận 5",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    )),
                Text("You: What's Man! . 9:40 AM ")
              ],
            ),
            Spacer(),
            Column(
              children: [Icon(Icons.check_circle_outline_rounded)],
            )
          ],
        ),
      ),
    ),
    );
  }
}