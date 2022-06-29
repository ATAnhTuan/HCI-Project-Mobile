import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screen/Home/Xacnhan.dart';
import 'package:table_calendar/table_calendar.dart';
import 'Chonsan.dart';

class DatLich extends StatefulWidget {
  @override
  State<DatLich> createState() => _DatLichState();
}

class _DatLichState extends State<DatLich> {
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.green[400],
          title: Text(
            "Đặt Lịch",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TableCalendar(
              firstDay: DateTime.utc(2022, 6, 28),
              lastDay: DateTime.utc(2030, 3, 14),
              focusedDay: focusedDay,
              daysOfWeekVisible: true,
              onDaySelected: (DateTime selecDay, DateTime focusDay) {
                setState(() {
                  selectedDay = selecDay;
                  focusedDay = focusDay;
                });
              },
              calendarStyle: CalendarStyle(
                  isTodayHighlighted: true,
                  selectedDecoration: BoxDecoration(
                      color: Colors.blue, shape: BoxShape.circle)),
              selectedDayPredicate: (DateTime date) {
                return isSameDay(selectedDay, date);
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text('Khung Giờ Có Thể Đặt',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
              child: Container(
                
                decoration: BoxDecoration(
                  color: Colors.green[400],
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 10),
                        blurRadius: 20,
                        color: Colors.black26.withOpacity(0.3))
                  ],
                  borderRadius: const BorderRadius.all(Radius.circular(17)),
                ),
                width: MediaQuery.of(context).size.width,
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                  
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "11h:00 ~ 13h:00",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Spacer(),
                        Text("15h:00 ~ 14h:00",
                            style: TextStyle(
                              fontSize: 20,
                            )),
                        Spacer(),
                        Text("18h:00 ~ 19h:00",
                            style: TextStyle(
                              fontSize: 20,
                            )),
                      ]),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10, left: 40, right: 40, bottom: 10),
              child: Row(
                children: [
                  Text("Giờ Bắt Đầu : ",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Spacer(),
                  Text("11 : 00",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          backgroundColor: Colors.grey[400]))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10, left: 40, right: 40, bottom: 10),
              child: Row(
                children: [
                  Text(
                    "Giờ Kết Thúc : ",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Text("13 : 00",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        backgroundColor: Colors.grey[400],
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Tổng Tiền : 250.000 VND",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("*Đã áp dụng Giờ Vàng*",
              style: TextStyle(color: Colors.red, fontSize: 25),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
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
                        MaterialPageRoute(builder: (context) => Xacnhan()));
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
