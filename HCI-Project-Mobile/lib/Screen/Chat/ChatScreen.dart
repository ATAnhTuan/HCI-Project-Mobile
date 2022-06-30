import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        title: Text("Sân Quận 5"),
        actions: [
          Padding(
          padding: EdgeInsets.only(right: 16),
          child: PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                onTap: () {},
                child: Row(
                  children: [
                    Icon(
                      Icons.delete_forever,
                      color: Colors.black54,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Text("Xóa Cuộc Trò Chuyện"),
                    ),
                  ],
                ),
              ),
            ],
            child: Icon(
              Icons.settings,
              size: 24,
            ),
          ),
        ),
        ],
      ),
      body: Column(
        children: const [
          Items(),
          UserItems(),
          Items(),
          UserItems(),
                  Expanded(
          child: Align(
            alignment: FractionalOffset.bottomCenter,
            child: Padding(
              padding: EdgeInsets.all(10.0),
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
