import 'package:Booking_san_bong/widgets/button2.dart';
import 'package:Booking_san_bong/widgets/specialist_column_voucher.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:Booking_san_bong/uidata.dart';
import 'package:Booking_san_bong/widgets/image_card.dart';
import 'package:Booking_san_bong/widgets/my_column.dart';
import 'package:Booking_san_bong/widgets/specialist_column.dart';
import 'package:Booking_san_bong/widgets/button.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    final screen_size_width = MediaQuery.of(context).size.width;
    final screen_size_height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: screen_size_width,
        height: screen_size_height,
        padding: EdgeInsets.only(top: 16, left: 16, right: 16),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                  height: screen_size_height * .2,
                  width: screen_size_width,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      ImageCard(cardImg: "images/dongtam.jpg"),
                      SizedBox(width: 10),
                      ImageCard(cardImg: "images/sanco1.jpg"),
                      SizedBox(width: 10),
                      ImageCard(cardImg: "images/sanco2.jpg"),
                    ],
                  )),
              SizedBox(height: 6),

        Container(
        margin: EdgeInsets.only(top: 10),
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.black38.withAlpha(10),
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),   
      ),

              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                        child: Text("Sân bóng gần nhất",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600))),
                    FlatButton(
                        onPressed: () {Navigator.pushNamed(context, UIData.sreachPageRoute);},
                        child: Text("Xem hết",
                            style: TextStyle(color: Colors.black54)),
                            )
                  ]
                  ),

              SizedBox(height: 6),
              Container(
                  height: 234,
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
                            showDialogFunc(context, "images/sanco1.jpg", "Sân Tây Hòa 1","Từ 5h-17h: 159k/slot\nTừ 17h-22h: 169k/slot", "Sân 5v5","235, Linh Mục, Thủ Đức");
                           },
                                
                            child: SizedBox(
                              child: SpecialistColumn_Voucher(
                                specImg: "images/sanco4.jpg",
                                specName: "Tây Hòa 1",
                                scopeSan: "5v5",
                                address: "1km -TP Hồ Chí",
                                price: "159k/slot",
                                priceVoucher: "🎫139k/slot",
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                            // This Will Call When User Click On ListView Item
                            showDialogFunc(context, "images/sanco2.jpg", "Sân Tây Hòa 2","Từ 5h-17h: 159k/slot\nTừ 17h-22h: 169k/slot", "Sân 5v5","235, Linh Mục, Thủ Đức");
                           },
                            child: SizedBox(
                              child: SpecialistColumn(
                                  specImg: "images/sanco5.jpg",
                                  specName: "Tây Hòa 2",
                                  scopeSan: "5v5",
                                  address: "2km -TP Hồ Chí",
                                  price: "159k/slot",
                                  priceVoucher: "",
                                  ),
                            ),
                          ),
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                            // This Will Call When User Click On ListView Item
                            showDialogFunc(context, "images/sanco3.jpg", "Gia Hoà 1","Từ 5h-17h: 159k/slot\nTừ 17h-22h: 169k/slot", "Sân 7v7","235, Linh Mục, Thủ Đức");
                           },
                            child: SizedBox(
                              child: SpecialistColumn_Voucher(
                                  specImg: "images/sanco3.jpg",
                                  specName: "Gia Hòa 1",
                                  scopeSan: "7v7",
                                  address: "2km -TP Thủ Đức",
                                  price: "179k/slot",
                                  priceVoucher: "🎫159k/slot",),
                            ),
                          ),
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                            // This Will Call When User Click On ListView Item
                            showDialogFunc(context, "images/sanco1.jpg", "Linh Tâm 1","Từ 5h-17h: 179k/slot\nTừ 17h-22h: 189k/slot", "Sân 7v7","235, Linh Mục, Thủ Đức");
                           },
                            child: SizedBox(
                              child: SpecialistColumn(
                                  specImg: "images/sanco1.jpg",
                                  specName: "Linh Tâm 1",
                                  scopeSan: "7v7",
                                  address: "3km -TP Thủ Đức",
                                  price: "179km/slot",
                                  priceVoucher: "",),
                            ),
                          ),
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                            // This Will Call When User Click On ListView Item
                            showDialogFunc(context, "images/sanco2.jpg", "Sân Linh Tâm","Từ 5h-17h: 179k/slot\nTừ 17h-22h: 189k/slot", "Sân 7v7","235, Linh Mục, Thủ Đức");
                           },
                            child: SizedBox(
                              child: SpecialistColumn(
                                  specImg: "images/sanco2.jpg",
                                  specName: "Đông Tâm",
                                  scopeSan: "7v7",
                                  address: "4km -TP Thủ Đức",
                                  price: "179km/slot",
                                  priceVoucher: "",),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                  ),

              SizedBox(height: 0),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                        child: Text("Sân bóng tốt nhất",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600)
                                )
                              ),
                    FlatButton(
                        onPressed: () {Navigator.pushNamed(context, UIData.sreachPageRoute);},
                        child: Text("Xem hết",
                            style: TextStyle(color: Colors.black54)))
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
                            onTap: () {
                            // This Will Call When User Click On ListView Item
                            showDialogFunc(context, "images/sanco1.jpg","Linh Tây","Từ 5h-17h: 169k/slot\nTừ 17h-22h: 189k/slot", "Sân 7v7","235, Linh Mục, Thủ Đức");
                           },
                            child: SizedBox(
                              child: SpecialistColumn(
                                  specImg: "images/sanco1.jpg",
                                  specName: "Linh Tây",
                                  scopeSan: "7v7",
                                  address: "2km -TP Thủ Đức",
                                  price: "179km/slot",
                                  priceVoucher: "",),
                            ),
                          ),
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                            // This Will Call When User Click On ListView Item
                            showDialogFunc(context, "images/sanco2.jpg", "Sân Tây Hòa","Từ 5h-17h: 169k/slot\nTừ 17h-22h: 189k/slot", "Sân 5v5","235, Linh Mục, Thủ Đức");
                           },
                            child: SizedBox(
                              child: SpecialistColumn(
                                  specImg: "images/sanco2.jpg",
                                  specName: "Tây Hòa",
                                  scopeSan: "5v5",
                                  address: "3km -TP Thủ Đức",
                                  price: "159km/slot",
                                  priceVoucher: "",),
                            ),
                          ),
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: InkWell(
                             onTap: () {
                            // This Will Call When User Click On ListView Item
                            showDialogFunc(context, "images/sanco4.jpg", "Sân Linh Tâm","Từ 5h-17h: 169k/slot\nTừ 17h-22h: 189k/slot", "Sân 5v5","235, Linh Mục, Thủ Đức");
                           },
                            child: SizedBox(
                              child: SpecialistColumn(
                                  specImg: "images/sanco4.jpg",
                                  specName: "Gia Hòa",
                                  scopeSan: "5v5",
                                  address: "5km -TP Thủ Đức",
                                  price: "159km/slot",
                                  priceVoucher: "",),
                            ),
                          ),
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                            // This Will Call When User Click On ListView Item
                            showDialogFunc(context, "images/sanco3.jpg", "Sân Linh Tâm","Từ 5h-17h: 169k/slot\nTừ 17h-22h: 189k/slot", "Sân 7v7","235, Linh Mục, Thủ Đức");
                           },
                            child: SizedBox(
                              child: SpecialistColumn(
                                  specImg: "images/sanco3.jpg",
                                  specName: "Linh Tâm",
                                  scopeSan: "7v7",
                                  address: "8km -TP Thủ Đức",
                                  price: "159km/slot",
                                  priceVoucher: "",),
                            ),
                          ),
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                            // This Will Call When User Click On ListView Item
                            showDialogFunc(context, "images/sanco1.jpg", "Sân Đông Tâm","Từ 5h-17h: 159k/slot\nTừ 17h-22h: 169k/slot", "Sân 5v5","235, Linh Mục, Thủ Đức");
                           },
                            child: SizedBox(
                              child: SpecialistColumn(
                                  specImg: "images/sanco1.jpg",
                                  specName: "Đông Tâm",
                                  scopeSan: "5v5",
                                  address: "7km -TP Thủ Đức",
                                  price: "159km/slot",
                                  priceVoucher: "",),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                        child: Text("Sân bóng có giảm giá",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600)
                                )
                              ),
                    FlatButton(
                        onPressed: () {Navigator.pushNamed(context, UIData.sreachPageRoute);},
                        child: Text("Xem hết",
                            style: TextStyle(color: Colors.black54)))
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
                            onTap: () {
                            // This Will Call When User Click On ListView Item
                            showDialogFunc(context, "images/sanco1.jpg","Linh Tây","Từ 5h-17h: 169k/slot\nTừ 17h-22h: 189k/slot", "Sân 7v7","235, Linh Mục, Thủ Đức");
                           },
                            child: SizedBox(
                              child: SpecialistColumn_Voucher(
                                  specImg: "images/sanco1.jpg",
                                  specName: "Nga Hoàng",
                                  scopeSan: "7v7",
                                  address: "2km -TP Thủ Đức",
                                  price: "179km/slot",
                                  priceVoucher: "🎫159k/slot"),
                            ),
                          ),
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                            // This Will Call When User Click On ListView Item
                            showDialogFunc(context, "images/sanco3.jpg", "Sân Linh Tâm","Từ 5h-17h: 169k/slot\nTừ 17h-22h: 189k/slot", "Sân 7v7","235, Linh Mục, Thủ Đức");
                           },
                            child: SizedBox(
                              child: SpecialistColumn_Voucher(
                                  specImg: "images/sanco3.jpg",
                                  specName: "Linh Tâm",
                                  scopeSan: "7v7",
                                  address: "8km -TP Thủ Đức",
                                  price: "159km/slot",
                                  priceVoucher: "🎫139k/slot"),
                            ),
                          ),
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                            // This Will Call When User Click On ListView Item
                            showDialogFunc(context, "images/sanco1.jpg", "Sân Đông Tâm","Từ 5h-17h: 159k/slot\nTừ 17h-22h: 169k/slot", "Sân 5v5","235, Linh Mục, Thủ Đức");
                           },
                            child: SizedBox(
                              child: SpecialistColumn_Voucher(
                                  specImg: "images/sanco1.jpg",
                                  specName: "Đông Tâm",
                                  scopeSan: "5v5",
                                  address: "7km -TP Thủ Đức",
                                  price: "159km/slot",
                                  priceVoucher: "🎫139k/slot"),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

//detail
showDialogFunc(context, img, title,price, desc, address) {
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
                Text.rich(
                TextSpan(
                                  text: "\n TÂY HÒA CENTER",
                                  
                                  style: TextStyle(color: Colors.green[900], fontSize: 24,fontWeight: FontWeight.bold),
                                  recognizer: TapGestureRecognizer()
                                  ..onTap = (){
                                    Navigator.pushNamed(context, UIData.detailHostPageRoute);
                                  }
                                ),
                                
                ),
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
                 Container(
                  // width: 200,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      price,
                      maxLines: 3,
                      style: TextStyle(fontSize: 15, color: Colors.grey[500]),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                // SizedBox(
                //   height: 10,
                // ),
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
                          style: TextStyle(fontSize: 12, color: Colors.grey[500]),
                          textAlign: TextAlign.center,
                         ),
                       ),
                     ),
                ListTile(
                title:
                  Text('Căng tin', style: TextStyle(fontWeight: FontWeight.w300)),
                leading: Icon(
                Icons.restaurant,
                color: Colors.green,
                  ),
                ),
                ListTile(
                 title: Text('Trọng tài',
                 style: TextStyle(fontWeight: FontWeight.w300)),
                 leading: Icon(
              Icons.sports_sharp,
              color: Colors.green
                ),
                ),
              ListTile(
              title: Text('Wifi', style: TextStyle(fontWeight: FontWeight.w300)),
              leading: Icon(
              Icons.wifi,
              color: Colors.green
              ),
              ),
              ListTile(
              title: Text('Chổ để xe', style: TextStyle(fontWeight: FontWeight.w300)),
              leading: Icon(
              Icons.local_parking,
              color: Colors.green
              ),
              ),
            //   ListTile(
            //   title: Text('Có vòi hoa sen',
            //   style: TextStyle(fontWeight: FontWeight.w300)),
            //   leading: Icon(
            //   Icons.shower_sharp,
            //  color: Colors.green
            //   ),
            //  ),
             MyButton(btnText: "Đặt Lịch",
            onpressed: () =>
                      Navigator.pushNamed(context, UIData.bookPageRoute)),
            ],
              
            ),
          ),
        ),
      );
    },
  );
}

