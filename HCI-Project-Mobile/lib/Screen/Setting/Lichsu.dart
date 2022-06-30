import 'package:flutter/material.dart';

class Lichsu extends StatelessWidget {
  const Lichsu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Color(0xFF66BB6A),
            title: (Text(
              "Lịch Sử",
            ))),
        body: Column(
            children: const [
              Item(image: "assets/images/govap.jpg",title: "Sân Thủ Đức",status: "Đang Đặt",color: Colors.amber,button: "Hủy"),
              Item(image: "assets/images/govap.jpg",title: "Sân Thủ Đức",status: "Đang Đặt",color: Colors.green,button: "Đặt Lại"),
              Item(image: "assets/images/govap.jpg",title: "Sân Thủ Đức",status: "Đang Đặt",color: Colors.red,button: "Đặt Lại"),
              Item(image: "assets/images/govap.jpg",title: "Sân Thủ Đức",status: "Đang Đặt",color: Colors.blue,button: "Đánh Giá"),
            ],
        ));
  }
}

class Item extends StatelessWidget {
  final String status;
  final String title;
  final String image;
  final String button;
  final Color color;
  const Item({
    Key? key, required this.status, required this.title, required this.image, required this.color, required this.button,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            color: color,
            child: Row(
              children: [
                Text(
                  status,
                  style:
                      TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Row(
                  children: const [
                    Text(
                      "11:00 ~ 13:00 - 26/05/2022",
                      style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Row(
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
                          children: const [
                            Text("   2 Km  "),
                            Text("4.5"),
                            Icon(
                              Icons.star_outlined,
                              color: Colors.yellow,
                            )
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
                    Spacer(),
                    Column(
                      children: [
                        Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: SizedBox(
                width: 120,
                height: 30,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13))),
                  child: Text(
                    button,
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => Xacnhan()));
                  },
                ),
              ),
            )
                      ],
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
