import 'package:flutter/material.dart';

class Lichsu extends StatefulWidget {
  const Lichsu({Key? key}) : super(key: key);

  @override
  State<Lichsu> createState() => _LichsuState();
}

class _LichsuState extends State<Lichsu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Color(0xFF66BB6A),
            title: (Text(
              "Lịch Sử",
            ))),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Item(
                  image: "assets/images/govap.jpg",
                  title: "Sân Gò Vấp",
                  status: "Đang Đặt",
                  color: Colors.amber,
                  button: "Hủy"),
              Item(
                  image: "assets/images/quan1.jpg",
                  title: "Sân Quận 1",
                  status: "Đã Đặt",
                  color: Colors.green,
                  button: "Hủy"),
              Item(
                  image: "assets/images/quan5.jpg",
                  title: "Sân Quận 5",
                  status: "Đã Hủy ",
                  color: Colors.red,
                  button: "Đặt Lại"),
              Item(
                  image: "assets/images/quan9.jpg",
                  title: "Sân Quận 9",
                  status: "Chờ Đánh Giá",
                  color: Colors.blue,
                  button: "Đánh Giá"),
            ],
          ),
        ));
  }
}

class Item extends StatefulWidget {
  final String status;
  final String title;
  final String image;
  final String button;
  final Color color;
  const Item({
    Key? key,
    required this.status,
    required this.title,
    required this.image,
    required this.color,
    required this.button,
  }) : super(key: key);

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    bool isChecked = false;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            color: widget.color,
            child: Row(
              children: [
                Text(
                  widget.status,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
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
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Column(
                      children: [
                        ClipRRect(
                          child: Image.asset(
                            widget.image,
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
                          widget.title,
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
                            ),
                            Text(" 5"),
                            Icon(Icons.person)
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
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, top: 20),
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
                                widget.button,
                                style: TextStyle(fontSize: 20),
                              ),
                              onPressed: () => showDialog(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      AlertDialog(
                                        title: const Text('Lý Do Hủy'),
                                        content: Container(
                                          height: 200,
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Checkbox(
                                                      value: isChecked,
                                                      onChanged: (bool? value) {
                                                        setState(() {
                                                          isChecked = value!;
                                                        });
                                                      }),
                                                      Text("Có Việc Đột Xuất")
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Checkbox(
                                                      value: isChecked,
                                                      onChanged: (bool? value) {
                                                        setState(() {
                                                          isChecked = value!;
                                                        });
                                                      }),
                                                      Text("Mưa")
                                                ],
                                              ),
                                  
                                              Spacer(),
                                              TextField(
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  border: OutlineInputBorder(),
                                                  labelText: 'Lý Do Khác',
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                context, 'Cancel'),
                                            child: const Text('Cancel'),
                                          ),
                                          TextButton(
                                            onPressed: () =>
                                                Navigator.pop(context, 'OK'),
                                            child: const Text('OK'),
                                          ),
                                        ],
                                      )),
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
