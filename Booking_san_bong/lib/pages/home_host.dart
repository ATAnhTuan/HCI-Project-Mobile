import 'package:Booking_san_bong/pages/components/ImageText.dart';
import 'package:Booking_san_bong/pages/components/ImageTextHost.dart';
import 'package:Booking_san_bong/pages/components/ImageTextHost2.dart';
import 'package:Booking_san_bong/uidata.dart';
import 'package:Booking_san_bong/widgets/image_card2.dart';
import 'package:Booking_san_bong/widgets/spcialist_column_host.dart';
import 'package:Booking_san_bong/widgets/specialist_column.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:Booking_san_bong/widgets/button.dart';

class HomeHost_Page extends StatefulWidget {
  @override
  _HostHomePageState createState() => _HostHomePageState();
}

class _HostHomePageState extends State<HomeHost_Page> {
  @override
  Widget build(BuildContext context) {
    final screen_size_width = MediaQuery.of(context).size.width;
    final screen_size_height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: <Widget>[
           SizedBox(height: 10),
            _notificationCard(),
          imageTextHost(),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(120, 0, 0, 0),
                  child: Text(" TÂY HÒA - THỦ ĐỨC",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600,color: Colors.green[900])),
                )),
                
          ]),
          SizedBox(height: 6),
          Container(
              height: 230,
              width: screen_size_width,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(5, 5, 0, 0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.fromLTRB(5, 5, 0, 0),
                  children: <Widget>[
                    Expanded(
                      child: InkWell(
                        // onTap: () => Navigator.pushNamed(
                        //     context, UIData.detailHostPageRoute),
                        onTap: () {
                          // This Will Call When User Click On ListView Item
                          showDialogFunc(
                              context,
                              "images/sanco1.jpg",
                              "Sân Tây Hòa 1",
                              "Sân 5v5",
                              "235, Linh Mục, Thủ Đức");
                        },

                        child: SizedBox(
                          child: SpecialistColumnHost(
                            specImg: "images/sanco2.jpg",
                            specName: "Tây Hòa 1",
                            scopeSan: "5v5",
                            address: "TP Hồ Chí Minh",
                            price: "159k/slot",
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          // This Will Call When User Click On ListView Item
                          showDialogFunc(
                              context,
                              "images/sanco1.jpg",
                              "Sân Tây Hòa 2",
                              "Sân 5v5",
                              "235, Linh Mục, Thủ Đức");
                        },
                        child: SizedBox(
                          child: SpecialistColumnHost(
                            specImg: "images/sanco2.jpg",
                            specName: "Tây Hòa 2",
                            scopeSan: "5v5",
                            address: "TP Hồ Chí Minh",
                            price: "159k/slot",
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          // This Will Call When User Click On ListView Item
                          showDialogFunc(
                              context,
                              "images/sanco1.jpg",
                              "Tây Hòa 3",
                              "Sân 5v5",
                              "235, Linh Mục, Thủ Đức");
                        },
                        child: SizedBox(
                          child: SpecialistColumnHost(
                            specImg: "images/sanco2.jpg",
                            specName: "Tây Hòa 3",
                            scopeSan: "5v5",
                            address: "TP Hồ Chí Minh",
                            price: "159k/slot",
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 12),
                  ],
                ),
              )),
          Container(
                width: 200,
                child: MyButton(
                    btnText: "Thêm sân con",
                    onpressed: () =>
                        Navigator.pushNamed(context, UIData.addchildGroundPageRouter)),
              ),
              Divider(
              color: Colors.grey[800],
              height: 3,
              thickness: 1,
          ),
           SizedBox(height: 10),
          // imageTextHost2(),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0,0),
              child: Expanded(
                  child: Text("LINH TÂM-THỦ ĐỨC",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600,color: Colors.green[900]))),
            ),
          ]
          ),
          SizedBox(height: 6),
          Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0,0),
              child: Expanded(
                  child: Text("Đang chờ xác nhận...",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style:
                          TextStyle(fontSize: 18,color: Colors.red, fontWeight: FontWeight.w600)),),
            ),
            
          // Container(
          //     height: screen_size_height * .15,
          //     width: screen_size_width,
          //     child: ListView(
          //       scrollDirection: Axis.horizontal,
          //       children: <Widget>[
          //         Padding(
          //           padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
          //         ),
          //         ImageCard2(cardImg: "images/sanco1.jpg"),
          //         SizedBox(width: 10),
          //         ImageCard2(cardImg: "images/sanco2.jpg"),
          //         SizedBox(width: 10),
          //       ],
          //     )),
        ],
      ),
    );
  }
}

    Container _notificationCard() {
    return Container(
        margin: EdgeInsets.only(right: 15, left: 15),
      padding: EdgeInsets.fromLTRB(10, 16, 10, 16),
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
          'Sân "TÂY HÒA" đã được xác nhân !',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

//detail
showDialogFunc(context, img, title, desc, address) {
  return showDialog(
    context: context,
    builder: (context) {
      return Center(
        child: Material(
          type: MaterialType.transparency,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            padding: EdgeInsets.all(15),
            height: 720,
            width: MediaQuery.of(context).size.width * 0.9,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    img,
                    // width: 500,
                    height: 200,
                    width: MediaQuery.of(context).size.width * 0.9,
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(135, 0, 0, 0),
                  child: Row(children: <Widget>[
                    Icon(Icons.star, color: Colors.yellow, size: 18),
                    SizedBox(width: 1),
                    Icon(Icons.star, color: Colors.yellow, size: 18),
                    SizedBox(width: 1),
                    Icon(Icons.star, color: Colors.yellow, size: 18),
                    SizedBox(width: 1),
                    Icon(Icons.star, color: Colors.yellow, size: 18),
                    SizedBox(width: 1),
                    Icon(Icons.star, color: UIData.lightColor, size: 18),
                  ]),
                ),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  // width: 200,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      desc,
                      maxLines: 3,
                      style: TextStyle(fontSize: 15, color: Colors.grey[500]),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  // width: 200,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Từ 5h-17h: 159k/slot\nTừ 17h-22h: 169k/slot",
                      maxLines: 3,
                      style: TextStyle(fontSize: 15, color: Colors.grey[500]),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  // width: 200,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      address,
                      maxLines: 3,
                      style: TextStyle(fontSize: 15, color: Colors.grey[500]),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                
                Container(
                  // width: 200,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Dịch vụ tại địa điểm ",
                      maxLines: 3,
                      style: TextStyle(fontSize: 15, color: Colors.grey[500]),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                ListTile(
                  title: Text('Căng tin',
                      style: TextStyle(fontWeight: FontWeight.w300)),
                  leading: Icon(
                    Icons.restaurant,
                    color: Colors.green,
                  ),
                ),
                ListTile(
                  title: Text('Trọng tài',
                      style: TextStyle(fontWeight: FontWeight.w300)),
                  leading: Icon(Icons.sports_sharp, color: Colors.green),
                ),
                ListTile(
                  title: Text('Wifi',
                      style: TextStyle(fontWeight: FontWeight.w300)),
                  leading: Icon(Icons.wifi, color: Colors.green),
                ),
                ListTile(
                  title: Text('Chổ để xe',
                      style: TextStyle(fontWeight: FontWeight.w300)),
                  leading: Icon(Icons.local_parking, color: Colors.green),
                ),
                ListTile(
                  title: Text('Có vòi hoa sen',
                      style: TextStyle(fontWeight: FontWeight.w300)),
                  leading: Icon(Icons.shower_sharp, color: Colors.green),
                ),
                MyButton(
                    btnText: "Thiết lập sân",
                    onpressed: () => Navigator.pushNamed(
                        context, UIData.setupGroundPageRoute)),
              ],
            ),
          ),
        ),
      );
    },
  );
}
