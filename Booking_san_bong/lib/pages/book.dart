import 'package:Booking_san_bong/common/theme_helper.dart';
import 'package:Booking_san_bong/pages/confirm.dart';
import 'package:flutter/material.dart';
import 'package:Booking_san_bong/uidata.dart';
import 'package:Booking_san_bong/widgets/button.dart';
import 'package:Booking_san_bong/widgets/date_column.dart';
import 'package:Booking_san_bong/widgets/specialist_column_book.dart';

class BookPage extends StatefulWidget {
  @override
  _BookPageState createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  bool changedColor1 = true;
  bool changedColor2 = true;
  bool changedColor3 = true;
  bool changedColor4 = true;
  bool changedColor5 = true;
  bool changedColor6 = true;
  bool changedColor7 = true;
  bool changedColor8 = true;
  var count="0";
  @override
  Widget build(BuildContext context) {
    final screen_size_width = MediaQuery.of(context).size.width;
    final screen_size_height = MediaQuery.of(context).size.height;

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
                  color: UIData.mainColor,
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
                              dateBg: Colors.white,
                              dateTextColor: UIData.mainColor),
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
                              dateBg: Colors.transparent,
                              dateTextColor: Colors.yellow),
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
                                "Có sẵn", Colors.white, Colors.black54),
                            buttonSample(
                                "Đang chọn", UIData.mainColor, Colors.white),
                            buttonSample(
                                "Hết Chổ", Colors.grey[300], Colors.black54),
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
                            /// thái fix

                            RaisedButton(
                              padding: EdgeInsets.fromLTRB(26, 5, 26, 5),
                              child: Text("5:00 - 6:30 AM"),
                              color:
                                  changedColor1 ? Colors.white : Colors.green,
                              textColor:
                                  changedColor1 ? Colors.black54 : Colors.white,
                              onPressed: () {
                                // Thay đổi trạng thái UI với các thành phần liên quan đến changedColor
                                setState(() {
                                  changedColor1 = !changedColor1;

                                  if (changedColor1 == false) {
                                    changedColor2 = true;
                                    changedColor3 = true;
                                    changedColor4 = true;
                                    changedColor5 = true;
                                    changedColor8 = true;
                                    count = "159.000";
                                  } else {
                                    count = "0";
                                  }
                                });
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  side: BorderSide(color: Colors.black)),
                            ),
                            Text("     "),
                            RaisedButton(
                              padding: EdgeInsets.fromLTRB(26, 5, 26, 5),
                              child: Text("7:10 - 8:40 AM"),
                              color:
                                  changedColor2 ? Colors.white : Colors.green,
                              textColor:
                                  changedColor2 ? Colors.black54 : Colors.white,
                              onPressed: () {
                                // Thay đổi trạng thái UI với các thành phần liên quan đến changedColor
                                setState(() {
                                  changedColor2 = !changedColor2;
                                  if (changedColor2 == false) {
                                    changedColor1 = true;
                                    changedColor3 = true;
                                    changedColor4 = true;
                                    changedColor5 = true;
                                    changedColor8 = true;
                                    count = "159.000";
                                  } else {
                                    count = "0";
                                  }
                                });
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  side: BorderSide(color: Colors.black)),
                            ),

                            RaisedButton(
                              padding: EdgeInsets.fromLTRB(24, 5, 24, 5),
                              child: Text("9:20 - 10:50 PM"),
                              color:
                                  changedColor3 ? Colors.white : Colors.green,
                              textColor:
                                  changedColor3 ? Colors.black54 : Colors.white,
                              onPressed: () {
                                // Thay đổi trạng thái UI với các thành phần liên quan đến changedColor
                                setState(() {
                                  changedColor3 = !changedColor3;
                                  if (changedColor3 == false) {
                                    changedColor2 = true;
                                    changedColor1 = true;
                                    changedColor4 = true;
                                    changedColor5 = true;
                                    changedColor8 = true;
                                      count = "159.000";
                                  } else {
                                    count = "0";
                                  }
                                });
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  side: BorderSide(color: Colors.black)),
                            ),
                            Text("     "),
                            RaisedButton(
                              padding: EdgeInsets.fromLTRB(19, 5, 19, 5),
                              child: Text("13:00 - 14:30 PM"),
                              color:
                                  changedColor4 ? Colors.white : Colors.green,
                              textColor:
                                  changedColor4 ? Colors.black54 : Colors.white,
                              onPressed: () {
                                // Thay đổi trạng thái UI với các thành phần liên quan đến changedColor
                                setState(() {
                                  changedColor4 = !changedColor4;
                                  if (changedColor4 == false) {
                                    changedColor2 = true;
                                    changedColor3 = true;
                                    changedColor1 = true;
                                    changedColor5 = true;
                                    changedColor8 = true;
                                    count = "159.000";
                                  } else {
                                    count = "0";
                                  }
                                });
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  side: BorderSide(color: Colors.black)),
                            ),
                            RaisedButton(
                              padding: EdgeInsets.fromLTRB(19, 5, 19, 5),
                              child: Text("15:10 - 16:40 PM"),
                              color:
                                  changedColor5 ? Colors.white : Colors.green,
                              textColor:
                                  changedColor5 ? Colors.black54 : Colors.white,
                              onPressed: () {
                                // Thay đổi trạng thái UI với các thành phần liên quan đến changedColor
                                setState(() {
                                  changedColor5 = !changedColor5;
                                  if (changedColor5 == false) {
                                    changedColor2 = true;
                                    changedColor3 = true;
                                    changedColor4 = true;
                                    changedColor1 = true;
                                    changedColor8 = true;
                                    count = "159.000";
                                  } else {
                                    count = "0";
                                  }
                                });
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  side: BorderSide(color: Colors.black)),
                            ),
                            Text("     "),
                            RaisedButton(
                              padding: EdgeInsets.fromLTRB(19, 5, 19, 5),
                              child: Text("17:20 - 18:50 PM"),
                              color: Colors.grey[300],
                              textColor: Colors.black54,
                              onPressed: () {
                                // Thay đổi trạng thái UI với các thành phần liên quan đến changedColor
                                setState(() {
                                  changedColor6 = !changedColor6;
                                });
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  side: BorderSide(color: Colors.black)),
                            ),
                            RaisedButton(
                              padding: EdgeInsets.fromLTRB(19, 5, 19, 5),
                              child: Text("19:30 - 21:00 PM"),
                              color: Colors.grey[300],
                              textColor: Colors.black54,
                              onPressed: () {
                                // Thay đổi trạng thái UI với các thành phần liên quan đến changedColor
                                setState(() {
                                  changedColor7 = !changedColor7;
                                });
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  side: BorderSide(color: Colors.black)),
                            ),
                            Text("     "),
                            RaisedButton(
                              padding: EdgeInsets.fromLTRB(19, 5, 19, 5),
                              child: Text("21:40 - 23:20 PM"),
                              color:
                                  changedColor8 ? Colors.white : Colors.green,
                              textColor:
                                  changedColor8 ? Colors.black54 : Colors.white,
                              onPressed: () {
                                // Thay đổi trạng thái UI với các thành phần liên quan đến changedColor
                                setState(() {
                                  changedColor8 = !changedColor8;
                                  if (changedColor8 == false) {
                                    changedColor2 = true;
                                    changedColor3 = true;
                                    changedColor4 = true;
                                    changedColor5 = true;
                                    changedColor1 = true;
                                    count = "179.000";
                                  } else {
                                    count = "0";
                                  }
                                });
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  side: BorderSide(color: Colors.black)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
              SizedBox(height: 8),
              //Thời gian khác
              Container(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Text(
                        "Bạn muốn đá thêm giờ (Tối đa chỉ với 30 phút)\n Phụ thu từ 20000 vnd",
                        style: TextStyle(fontSize: 16)),
                  )),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                child: Row(
                  children: [
                    Radio(value: ConfirmPage),
                    Text(
                      "Đá thêm 15 phút          ",
                      style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 13,
                          fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                child: Row(
                  children: [
                    Radio(value: ConfirmPage),
                    Text(
                      "Đá thêm 30 phút          ",
                      style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 13,
                          fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 10, 0, 0),
                child: Row(
                  children: <Widget>[
                    Title(
                      color: Colors.black,
                      child: Text(
                        "Tổng cộng: ",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ),
                    Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.green[50],
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        margin: EdgeInsets.all(7),
                        width: 200,
                        height: 30,
                        child: Text(
                          count.toString() + " VND",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.blueAccent[400],
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                  ],
                ),
              ),
              SizedBox(height: 6),
              Container(
                width: 200,
                child: MyButton(
                    btnText: "Tiếp tục",
                    onpressed: () =>
                        Navigator.pushNamed(context, UIData.confirmPageRoute)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
