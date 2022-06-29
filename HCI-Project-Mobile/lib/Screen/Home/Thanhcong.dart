import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screen/Home/BottomBar.dart';

class Thanhcong extends StatelessWidget {
  const Thanhcong({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Icon(Icons.check_circle,color: Colors.green[400],size: 100),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text("Đặt Sân Thành Công",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text("Cảm Ơn Bạn Đã Sử Dụng Dịch Vụ Đặt Sân Của Chúng Tôi",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
            ),
            Padding(
            padding: const EdgeInsets.only(left: 50, right: 20, top: 20),
            child: Container(
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BottomBar()));
                },
              ),
            ),
          )
            
          ],
        ),
      ),
    );
  }
}