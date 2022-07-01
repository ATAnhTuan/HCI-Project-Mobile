import 'package:flutter/material.dart';
import 'package:Booking_san_bong/uidata.dart';
import 'package:Booking_san_bong/widgets/button.dart';
import 'package:Booking_san_bong/widgets/date_column.dart';

class EditTimePage extends StatefulWidget {
  @override
  State<EditTimePage> createState() => _EditTimePageState();
}

class _EditTimePageState extends State<EditTimePage> {
  @override
  Widget build(BuildContext context) {
    final screen_size_width = MediaQuery.of(context).size.width;
    final screen_size_height = MediaQuery.of(context).size.height;
    int count = 0;
    //buttonTime
    Widget buttonTime(timeText, btnBg, timeBtnColor) {
      bool changedColor = false;
      return Container(
        height: 42,
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: RaisedButton(
            shape: RoundedRectangleBorder(
              side: BorderSide(
                  color: Colors.grey, width: 1, style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(8),
            ),
            color: changedColor ? Colors.green : btnBg,
            onPressed: () {
              // Thay đổi trạng thái UI với các thành phần liên quan đến changedColor
              setState(() {
                changedColor = !changedColor;
                count++;
              });
            },
            child: Text(timeText,
                style: TextStyle(
                    color: timeBtnColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 15))),
      );
    }

    Widget buttonSample(timeText, btnBg, timeBtnColor) {
      return Container(
        height: 42,
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: FlatButton(
            shape: RoundedRectangleBorder(
              side: BorderSide(
                  color: Colors.grey, width: 1, style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(8),
            ),
            color: btnBg,
            onPressed: () {},
            child: Text(timeText,
                style: TextStyle(
                    color: timeBtnColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 15))),
      );
    }

    return Scaffold(
      backgroundColor: UIData.mainColor,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            icon: Icon(Icons.chevron_left, color: Colors.white),
            onPressed: () => Navigator.pop(context)),
        title: Text("Lịch"),
      ),
      body: Container(
        width: screen_size_width,
        height: screen_size_height,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                  color: Color.fromARGB(255, 33, 209, 112),
                  width: screen_size_width,
                  child: Column(children: <Widget>[
                    //SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                            icon: Icon(Icons.chevron_left, color: Colors.white),
                            onPressed: () {}),
                        Expanded(
                          child: Text("Tháng 2, 2022",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600)),
                        ),
                        IconButton(
                            icon:
                                Icon(Icons.chevron_right, color: Colors.white),
                            onPressed: () {}),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          DateColumn(
                              weekDay: "Thứ 2",
                              weekDayColor: Colors.white,
                              date: "16",
                              dateBg: Colors.transparent,
                              dateTextColor: Colors.white),
                          DateColumn(
                              weekDay: "Thứ 3",
                              weekDayColor: Colors.white,
                              date: "17",
                              dateBg: Colors.transparent,
                              dateTextColor: Colors.white),
                          DateColumn(
                              weekDay: "Thứ 4",
                              weekDayColor: Colors.white,
                              date: "18",
                              dateBg: Colors.transparent,
                              dateTextColor: Colors.white),
                          DateColumn(
                              weekDay: "Thứ 5",
                              weekDayColor: Colors.white,
                              date: "19",
                              dateBg: Colors.transparent,
                              dateTextColor: Colors.white),
                          DateColumn(
                              weekDay: "Thứ 6",
                              weekDayColor: Colors.white,
                              date: "20",
                              dateBg: Colors.transparent,
                              dateTextColor: Colors.white),
                          DateColumn(
                              weekDay: "Thứ 7",
                              weekDayColor: Colors.yellow,
                              date: "21",
                              dateBg: Colors.transparent,
                              dateTextColor: Colors.yellow),
                          DateColumn(
                              weekDay: "Chủ Nhật",
                              weekDayColor: Colors.yellow,
                              date: "22",
                              dateBg: Colors.white,
                              dateTextColor: UIData.mainColor),
                        ]),
                    SizedBox(height: 15),
                  ])),
              Container(
                  width: screen_size_width,
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 18),
                      Container(
                        alignment: Alignment.center,
                        child: Wrap(
                          runSpacing: 15,
                          spacing: 2,
                          children: <Widget>[
                            buttonSample(
                                "Sân trống", Colors.white, Colors.black54),
                            buttonSample(
                                "Khách đã đặt", UIData.mainColor, Colors.white),
                            buttonSample(
                                "Sân đã khóa", Colors.grey[300], Colors.black54),
                          ],
                        ),
                      ),
                      SizedBox(height: 18),
                      Text("Khung thời gian có sẵn",
                          style: TextStyle(fontSize: 16)),
                      SizedBox(height: 18),
                      Container(
                        alignment: Alignment.center,
                        child: Wrap(
                          runSpacing: 15,
                          spacing: 2,
                          children: <Widget>[
                            buttonTime(
                                "5:00 - 6:30 AM", Colors.white, Colors.black54),
                            buttonTime("🔒 7:10 - 8:40 AM", UIData.mainColor,
                                Colors.white),
                            buttonTime("🔒 9:20 - 10:50 AM", UIData.mainColor,
                                Colors.white),
                            buttonTime("🔒 13:00 - 14:30 PM", UIData.mainColor,
                                Colors.white),
                            buttonTime("15:10 - 16:40 PM", Colors.white,
                                Colors.black54),
                            buttonTime("17:20 - 18:50 PM", Colors.white,
                                Colors.black54),
                            buttonSample("18:50-20:20 PM", Colors.grey[300],
                                Colors.black54),
                            buttonSample("21:00-22:30 PM", Colors.grey[300],
                                Colors.black54),
                          ],
                        ),
                      ),
                    ],
                  )),
              Container(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "21:00-22:30                                                          (PM)",
                    ),
                  ),
                ),
              ),
               Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                        color:  UIData.mainColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0)),
                        height: 40,
                        minWidth: 200,
                        onPressed: () {},
                        child: Text(
                          "Thêm mới",
                          style: TextStyle(color: Colors.white, fontSize: 15.5),
                        )),
                        FlatButton(
                        color:  Color.fromARGB(255, 214, 59, 11),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0)),
                        height: 40,
                        minWidth: 200,
                        onPressed: () {},
                        child: Text(
                          "Hủy slot",
                          style: TextStyle(color: Colors.white, fontSize: 15.5),
                        ))
                  ],
                ),
                
              ),
              
              
              SizedBox(height: 24),
              Container(
                width: 200,
                child: Padding(
                  padding: const EdgeInsets.only(top: 28),
                  child: MyButton(
                      btnText: "Lưu Thiết Lập",
                      onpressed: () =>
                          Navigator.pushNamed(context, UIData.setupGroundPageRoute)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
