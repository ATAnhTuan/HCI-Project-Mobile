import 'package:flutter/material.dart';

class Danhgia extends StatelessWidget {
  const Danhgia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
              pinned: true,
              backgroundColor: Colors.green,
              expandedHeight: 150,
              flexibleSpace: FlexibleSpaceBar(
                  background: ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      child: Image.asset(
                        'assets/images/thuduc.png',
                        fit: BoxFit.fill,
                      )))),
          SliverList(
            delegate: SliverChildListDelegate([
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Sân Thủ Đức",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Bạn Cảm Thấy Sân Bóng Này Như Thế nào",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Spacer(),
                      Icon(
                        Icons.star_rate,
                        color: Colors.yellow,
                      ),
                      Icon(
                        Icons.star_rate,
                        color: Colors.yellow,
                      ),
                      Icon(
                        Icons.star_rate,
                        color: Colors.yellow,
                      ),
                      Icon(
                        Icons.star_rate,
                        color: Colors.yellow,
                      ),
                      Icon(
                        Icons.star_rate,
                        color: Colors.yellow,
                      ),
                      Spacer(),
                    ],
                  ),
                  Text("1 Sao : tệ ~ 5 Sao : Tốt"),
                  Container(
                    padding: EdgeInsets.all(10),
                    color: Colors.grey[300],
                    child: Row(
                      children: const [
                        Text(
                          "11:00 ~ 13:00 - 26/05/2022",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          
                          children: [
                            ClipRRect(
                              child: Image.asset(
                                "assets/images/quan1.jpg",
                                width: 80,
                                height: 80,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Sân Số 1",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Row(
                              children: const [
                               
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
                      ),
                      Spacer(),
Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(20),
                                child: SizedBox(
                                  width: 120,
                                  height: 30,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.green,
                                        onPrimary: Colors.white,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(13))),
                                    child: Text(
                                      "Đánh Giá",
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
              )
            ]),
          )
        ],
      ),
    );
  }
}
