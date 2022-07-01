// import 'dart:js';

import 'package:Booking_san_bong/common/theme_helper.dart';
import 'package:flutter/material.dart';
import 'package:Booking_san_bong/uidata.dart';
import 'package:Booking_san_bong/widgets/button.dart';
import 'package:Booking_san_bong/widgets/button3.dart';
import 'package:flutter/services.dart';
// import 'package:line_awesome_icons/line_awesome_icons.dart';

class HistoryPage extends StatefulWidget {
  @override
  _historyPageState createState() => _historyPageState();
}

class _historyPageState extends State<HistoryPage> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    _notificationCard(),
                    _nextAppointmentText(),
                    _appoinmentCard("Gia Hòa 1"),
                    _areaSpecialistsText(),
                    _specialistsCardInfo("Hòa Lạc",""),
                    _specialistsCardInfo("Lạc Long Quân","\n★ ★ ★ ☆ ☆"),
                    _specialistsCardInfo("Âu Cơ","\n★ ★ ★ ★ ☆"),

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
      margin: EdgeInsets.only( bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'Sân đã đặt của bạn',
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

    Container _notificationCard() {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.green,
        // gradient: redGradient,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: Icon(
          Icons.edit_calendar_outlined ,
          color: Colors.white,
          size: 32,
        ),
        title: Text(
          'Đánh giá \nSân Hòa Lạc',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        trailing: OutlinedButton(
          onPressed: () {},
          // color: Colors.transparent,
          // borderSide: BorderSide(
          //   color: Colors.white,
          //   width: 1.0,
          // ),
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.circular(26),
          // ),
          child: Text(
            '☆ ☆ ☆ ☆ ☆',
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 24,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  Container _appoinmentCard(textSan) {
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
                backgroundColor: Color(0xFFD9D9D9),
                backgroundImage: NetworkImage('https://img3.thuthuatphanmem.vn/uploads/2019/10/01/anh-logo-bong-da_103805455.jpg'),
                radius: 36.0,
              ),
              RichText(
                text: TextSpan(
                  text: textSan,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    height: 1.5,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: '\n19h Chủ nhật-22/2/2022',
                      style: TextStyle(
                        color: Colors.black45,
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),
                    TextSpan(
                      text: '\nTây Hòa, Linh Mục, Thủ Đức',
                      style: TextStyle(
                        color: Colors.black38,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                    // TextSpan(           
                    //   text: '\nBạn muốn hủy lịch hẹn? ',
                    //   style: TextStyle(
                    //     fontWeight: FontWeight.w400,
                    //     fontSize: 14,
                    //   ),
                    // ),
                    
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey[400],
                ),
              ),
            ],
          ),
           Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: TextField(
                  decoration: ThemeHelper1().textInputDecoration(
                      "Bạn muốn hủy đặt sân?", "Lý do hủy"),
                ),
              ),
         
          SizedBox(
            height: 8.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _buttonBuilderCencel('Hủy'),
            ],
          ),
           Divider(
            color: Colors.grey[200],
            height: 3,
            thickness: 1,
          ),
        ],
      ),
    );
  }

  Column _buttonBuilderCencel(text) {
    return Column(
      children: <Widget>[
         FlatButton(
                  color: Colors.red,
                        onPressed: () {},
                        child: Text(text,
                            style: TextStyle(color: Colors.white)
                            )
                            ),
        SizedBox(
          height: 8.0,
        ),
      ],
    );
  }


  Widget _areaSpecialistsText() {
    return Container(
      margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'Lịch sử đặt sân',
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

  Widget _specialistsCardInfo(testSan,star) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 18.0),
      margin: EdgeInsets.only(
        bottom: 20.0,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
              color: Colors.green.withOpacity(0.2),
              spreadRadius: 1.0,
              blurRadius: 6.0,
            ),
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Color(0xFFD9D9D9),
                backgroundImage: NetworkImage('https://img3.thuthuatphanmem.vn/uploads/2019/10/01/anh-logo-bong-da_103805455.jpg'),
                radius: 36.0,
              ),
              SizedBox(
                width: 10.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                    
                      children: <TextSpan>[
                        TextSpan(
                          text: testSan,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(
                          text: '\n',
                          style: TextStyle(
                            color: Colors.black45,
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                          ),
                        ),
                        TextSpan(
                          text: '7V7\n18h45-20h15 PM',
                          style: TextStyle(
                            color: Colors.black38,
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                        TextSpan(
                          text: star,
                          style: TextStyle(
                            color: Colors.black38,
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                ],
              ),
            ],
          ),
          Icon(
            Icons.cancel,
            color: Colors.red,
            size: 36,
          ),
        ],
      ),
    );
  }

  




