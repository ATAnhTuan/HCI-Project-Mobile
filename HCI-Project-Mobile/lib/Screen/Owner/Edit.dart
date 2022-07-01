import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screen/Home/Santhuduc.dart';
import 'package:flutter_application_1/Screen/Owner/Ownerpage.dart';

class Edit extends StatelessWidget {
  const Edit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chỉnh Sửa Sân"),
        backgroundColor: Colors.green[400],
      ),
      body: SingleChildScrollView(
          child: Container(
        child: Column(
          children: [
            ItemSale(),
            Edititem(),
            Padding(
              padding: const EdgeInsets.only(left: 160),
              child: Row(
                children: [
                  Text(
                    "Sân Nhỏ   ",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.add_box_outlined)
                ],
              ),
            ),
            ListItem(
              image: 'assets/images/govap.jpg',
              title: "  Sân 1   ",
            ),
            ListItem(
              image: 'assets/images/quan5.jpg',
              title: "  Sân 2   ",
            ),
            ListItem(
              image: 'assets/images/quan4.jpg',
              title: "  Sân 3   ",
            ),
            ListItem(
              image: 'assets/images/quan1.jpg',
              title: "  Sân 4   ",
            ),
            Confirm(),
          ],
        ),
      )),
    );
  }
}

class ItemSale extends StatelessWidget {
  const ItemSale({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, left: 15, right: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        border: Border.all(color: Colors.blueGrey, width: 2),
      ),
      child: Material(
        color: Colors.transparent,
        child: Column(
          children: [
            Image.asset(
              "assets/images/govap.jpg",

              // width: 140,
            ),
            Text(
              "Sân Quân Gò Vấp",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            ),
            Row(
              children: [
                Text("4.5",
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Spacer(),
                Text("1Km",
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                Icon(
                  Icons.location_on,
                  color: Colors.green[400],
                )
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.money,
                  color: Colors.green[400],
                ),
                Spacer(),
                Text(
                  "250.000/h",
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Text("300.000/h",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.lineThrough))
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Edititem extends StatelessWidget {
  const Edititem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Giảm Giá : 50.000/h",
                style: TextStyle(color: Colors.red),
              ),
              Icon(Icons.edit),
              Spacer(),
              Text("Giá Sân : 300.000/h"),
              Icon(Icons.edit),
            ],
          ),
          Row(
            children: [
              Text(
                "Tải Hình Mới : ",
              ),
              Icon(Icons.add_a_photo_outlined),
              Spacer(),
              Text("Địa Chỉ : Đường 19/5"),
              Icon(Icons.edit_location_alt),
            ],
          ),
          Row(
            children: [
              Text(
                "Khung Giờ Giảm Giá: ",
              ),
              Icon(Icons.add_box_rounded),
              Spacer(),
            ],
          ),
          Row(
            children: [
              Text(
                "11h : 00 ~ 13h : 00",
              ),
              Spacer(),
              Text("Giảm: 50.000/h", style: TextStyle(color: Colors.red)),
              Spacer(),
              Icon(Icons.edit),
              Icon(Icons.delete_forever),
            ],
          ),
          Row(
            children: [
              Text(
                "13h - 00 ~ 15h ~ 00",
              ),
              Spacer(),
              Text("Giảm: 30.000/h", style: TextStyle(color: Colors.red)),
              Spacer(),
              Icon(Icons.edit),
              Icon(Icons.delete_forever),
            ],
          )
        ],
      )),
    );
  }
}

class ListItem extends StatelessWidget {
  final String image;
  final String title;
  const ListItem({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(border: Border.all(
          color: Colors.lightBlue,
          width: 2
        )),
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Icon(Icons.edit)
                  ],
                ),
                Row(
                  children: const [
                    Icon(Icons.monetization_on_outlined),
                    Text("  300.000  VND  "),
                  ],
                ),
                Row(
                  children: const [
                    Icon(Icons.person),
                    Text("  5    "),
                  ],
                )
              ],
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

class Confirm extends StatelessWidget {
  const Confirm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SizedBox(
        width: 250,
        height: 45,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Colors.green,
              onPrimary: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13))),
          child: Text(
            'Xác Nhận',
            style: TextStyle(fontSize: 20),
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Ownerpage()));
          },
        ),
      ),
    );
  }
}
