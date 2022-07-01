import 'package:flutter/material.dart';
import 'package:Booking_san_bong/uidata.dart';
import 'package:Booking_san_bong/widgets/button.dart';
import 'package:Booking_san_bong/widgets/button3.dart';
import 'package:flutter/services.dart';

class VoucherPage extends StatefulWidget {
  @override
  _VoucherPageState createState() => _VoucherPageState();
}

class _VoucherPageState extends State<VoucherPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HistoryCustomerPage(),
    );
  }
}

class HistoryCustomerPage extends StatefulWidget {
  HistoryCustomerPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HistoryCustomerPageState createState() => _HistoryCustomerPageState();
}

class _HistoryCustomerPageState extends State<HistoryCustomerPage> {
  int _selectedIndex = 0;

  void onTapped(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            // Stack(
            //   alignment: AlignmentDirectional.topCenter,
            //   overflow: Overflow.visible,
            //   children: <Widget>[
            //     _backBgCover(),
            //   ],
            // ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    // _notificationCard(),
                    _nextAppointmentText(),
                    _appoinmentCard("Tây Hòa 1"),
                    _appoinmentCard("Gia Hòa 1"),
                    _appoinmentCard("Đồng Tâm "),
                    _appoinmentCard("Hòa Lạc"),
                    //_specialistsCardInfo(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _nextAppointmentText() {
  return Container(
    margin: EdgeInsets.only(bottom: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          'Có thể bạn cần',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        Text(
          'Xem thêm',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.grey,
          ),
        ),
      ],
    ),
  );
}

Container _appoinmentCard(textsan) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 18.0),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(18),
    ),
    child: Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            CircleAvatar(
              minRadius: 27,
              backgroundColor: Color(0xFFD9D9D9),
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTW8cXT6N87hFULQ_0rFgk-LyKfYZf_l972wg&usqp=CAU'),
            ),
            RichText(
              text: TextSpan(
                text:textsan,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  height: 1.5,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: '\nKhuyến mãi dịp 30/04- 01/05',
                    style: TextStyle(
                      color: Colors.black45,
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                    ),
                  ),
                  TextSpan(
                    text: '\nTừ ngày 28/04->5/5/2022',
                    style: TextStyle(
                      color: Colors.black45,
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                    ),
                  ),
                  TextSpan(
                    text: '\nSân 1\nTây Hòa, Linh Mục, Thủ Đức',
                    style: TextStyle(
                      color: Colors.black38,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Align(
                alignment: Alignment.bottomRight,
                child: FlatButton(
                  onPressed: () =>
                      Navigator.pushNamed(null, UIData.detailPageRoute),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey[400],
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 8.0,
        ),
        Divider(
          color: Colors.grey[200],
          height: 3,
          thickness: 1,
        ),
        SizedBox(
          height: 8.0,
        ),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   children: <Widget>[
        //     _iconBuilder(Icons.ac_unit_outlined, 'Check-in'),
        //     _iconBuilder(Icons.ac_unit_outlined, 'Cancel'),
        //   ],
        // )
      ],
    ),
  );
}
