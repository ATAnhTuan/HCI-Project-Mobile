import 'package:flutter/material.dart';
import 'package:Booking_san_bong/common/theme_helper.dart';
import 'package:Booking_san_bong/uidata.dart';
import 'package:Booking_san_bong/widgets/button.dart';
import 'package:select_form_field/select_form_field.dart';

class addchildGroundPage extends StatefulWidget {
  @override
  State<addchildGroundPage> createState() => _addchildGroundPageState();
}

class _addchildGroundPageState extends State<addchildGroundPage> {
  bool _isChecked = true;
  String _currText = '';

  List<String> text = [
    "Căn tin",
    "Trọng tài",
    "wifi",
    "Chỗ để xe",
    "Vòi hoa sen",
    "tất cả",
    // "Vòi hoa sen",
    // "Vòi hoa sen",
  ];
  final List<Map<String, dynamic>> _items = [
    {
      'value': 'boxValue',
      'label': '5vs5',
      'icon': Icon(Icons.sports_basketball),
    },
    {
      'value': 'circleValue',
      'label': '7vs7',
      'icon': Icon(Icons.sports_basketball),
    },
    {
      'value': 'starValue',
      'label': '11vs11',
      'icon': Icon(Icons.sports_basketball),
    },
  ];
  final List<Map<String, dynamic>> _sys = [
    {
      'value': 'boxValue',
      'label': 'Linh Tây - Thủ Đức',
      
    },
    {
      'value': 'circleValue',
      'label': 'Gia Hòa - Thủ Đức',
      
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(150, 0, 0, 20),
                    child: IconButton(
                      icon: Icon(
                        Icons.add_a_photo,
                        color: Colors.green,
                        size: 95,
                      ),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: SelectFormField(
                  initialValue: 'circle',
                  labelText: '     Tên hệ thống sân',
                  items: _sys,
                  onChanged: (val) => print(val),
                  onSaved: (val) => print(val),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: TextField(
                    decoration: ThemeHelper1()
                        .textInputDecoration("Nhập tên sân", "Nhập tên sân... "),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: TextField(
                    decoration: ThemeHelper1()
                        .textInputDecoration("Nhập địa chỉ", "Nhập địa chỉ... "),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: SelectFormField(
                  initialValue: 'circle',
                  labelText: '     Kích thước sân',
                  items: _items,
                  onChanged: (val) => print(val),
                  onSaved: (val) => print(val),
                ),
              ),
              // Text('Các loại dịch vụ sân có:'),
              // Expanded(
              //     child: Container(
              //   height: 300.0,
              //   child: SingleChildScrollView(
              //     child: Column(
              //       children: text
              //           .map((t) => CheckboxListTile(
              //                 title: Text(t),
              //                 value: _isChecked,
              //                 onChanged: (val) {
              //                   setState(() {
              //                     _isChecked = val;
              //                     if (val == true) {
              //                       _currText = t;
              //                     }
              //                   });
              //                 },
              //               ))
              //           .toList(),
              //     ),
              //   ),
              // )),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                child: MyButton(
                    btnText: "Tiếp tục",
                    onpressed: () =>
                        Navigator.pushNamed(context, UIData.mainHostPageRoute)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
