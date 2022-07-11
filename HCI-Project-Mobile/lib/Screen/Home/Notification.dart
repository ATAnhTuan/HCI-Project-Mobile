import 'package:flutter/material.dart';

class Notifi extends StatefulWidget {
  const Notifi({Key? key}) : super(key: key);

  @override
  State<Notifi> createState() => _NotifiState();
}

class _NotifiState extends State<Notifi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text("Thông Báo"), backgroundColor: Colors.green[400]),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Items(),
            Items(),
            Items(),
            Items(),
          ],
        ),
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
        child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              border: Border.all(
                color: Colors.indigo,
                width: 2
              )
            ),
            child: Row(
              children: [
                 Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Đặt Sân Thành Công!!!",
                          style:
                              TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text("Ngày : 28/06/2022"),
                        Text("Thời Gian : 11h ~ 13h"),
                        Text("Địa Chỉ : Đường 19/5"),
                      ],
                    ),
                  ),
                
              ],
            ),
          ),
        )
      ],
    ));
  }
}
