import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        title: Text("Sân Quận 5"),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: Icon(Icons.settings))
        ],
      ),
      body: Column(
        children: [
          Items(),
          UserItems(),
          Items(),
          UserItems(),
                  Expanded(
          child: Align(
            alignment: FractionalOffset.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: ("Your message here...")
                ),
              ),
            ),
          ),
        ),
        ],
      )
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
      child: Column(children: [
        Container(
          height: 30,
          margin: EdgeInsets.only(top: 30, left: 200),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.green[400],
          ),
          child:
              Text("                                                       "),
        ),
      ]),
    );
  }
}
class UserItems extends StatelessWidget {
  const UserItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Container(
          height: 30,
          margin: EdgeInsets.only(top: 30, right: 180),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey,
          ),
          child:
              Text("                                                       "),
        ),
      ]),
    );
  }
}
