import 'package:Booking_san_bong/pages/Voucher.dart';
import 'package:Booking_san_bong/pages/history.dart';
import 'package:Booking_san_bong/pages/home.dart';
import 'package:Booking_san_bong/pages/sreach.dart';
import 'package:flutter/material.dart';
import 'package:Booking_san_bong/uidata.dart';
import 'package:Booking_san_bong/widgets/image_card.dart';
import 'package:Booking_san_bong/widgets/my_column.dart';
import 'package:Booking_san_bong/widgets/specialist_column.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomePage(),
    // VoucherPage(),
    SreachPage(),
    VoucherPage(),
    HistoryPage(),
  ];
  @override
  Widget build(BuildContext context) {
    final screen_size_width = MediaQuery.of(context).size.width;
    final screen_size_height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        leading: IconButton(
            icon: Icon(
              Icons.notifications_active,
              color: Colors.yellow[700],
              size: 35,
            ),
            onPressed: () =>
                Navigator.pushNamed(context, UIData.notificationPageRoute)),
        actions: <Widget>[
          Container(
            decoration: BoxDecoration(),
            margin: EdgeInsets.only(right: 15, top: 10, bottom: 2),
            child: InkWell(
              onTap: () =>
                  Navigator.pushNamed(context, UIData.profilePageRoute),
              child: CircleAvatar(
                radius: 22,
                backgroundImage: AssetImage(
                  "images/cong.png",
                ),
              ),
            ),
          ),
        ],
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        iconSize: 30,
        selectedFontSize: 17,
        unselectedFontSize: 13,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: ('Trang Chủ'),
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.favorite_border_rounded),
          //   label: ('Đã Lưu'),
          // ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: ('Tìm Kiếm'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_membership),
            label: ('Khuyến Mãi'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event_available),
            label: ('Lịch Sử'),
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
