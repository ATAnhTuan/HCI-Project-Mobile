import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screen/Owner/Ownerpage.dart';

class Add extends StatelessWidget {
  const Add({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.green[400],
          title: Text("Thêm Sân")),
      body: Container(
        child: Column(
          children: [
            addbigitem(),
            additem(),
            Confirm(),
          ],
        ),
      ),
    );
  }
}

class addbigitem extends StatelessWidget {
  const addbigitem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Hình Đại Diện Chính",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 150, top: 10, bottom: 10),
            child: Row(
              children: [
                Text(
                  "Tên Sân:",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                Icon(Icons.edit)
              ],
            ),
          ),
          Icon(
            Icons.add_a_photo_outlined,
            size: 100,
          ),
          Row(
            children: [
              Text(
                "Giảm Giá :VND",
                style: TextStyle(color: Colors.red),
              ),
              Icon(Icons.edit),
              Spacer(),
              Text("Giá Sân :VND"),
              Icon(Icons.edit),
            ],
          ),
          Row(
            children: [
              Text(
                "Địa Chỉ:",
              ),
              Icon(Icons.edit),
            ],
          ),
        ],
      ),
    );
  }
}

class additem extends StatelessWidget {
  const additem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 150, top: 10, bottom: 10),
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
          Text(
            "Hình Đại Diện Sân",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          Icon(
            Icons.add_a_photo_outlined,
            size: 100,
          ),
          Row(
            children: [
              Text(
                "Giá Sân :VND",
              ),
              Icon(Icons.edit),
              Spacer(),
              Text("Số Lượng :"),
              Icon(Icons.person),
            ],
          ),
        ],
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