import 'package:Booking_san_bong/common/theme_helper.dart';
// import 'package:Booking_san_bong/pages/detail_host.dart';
import 'package:Booking_san_bong/uidata.dart';
import 'package:Booking_san_bong/widgets/button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:select_form_field/select_form_field.dart';

class SreachPage extends StatefulWidget {
  @override
  _SreachPageState createState() => _SreachPageState();
}

class _SreachPageState extends State<SreachPage> {

  @override
  Widget build(BuildContext context) {
    // MediaQuery to get Device Width
    double width = MediaQuery.of(context).size.width * 0.6;
    var listView = ListView.builder(
          itemCount: imgList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                // This Will Call When User Click On ListView Item
                showDialogFunc(context, imgList[index], titleList[index], descList[index], addressList[index],price[index]);
              },
              // Card Which Holds Layout Of ListView Item
              
              child: Column(
                
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Card(
                        child: Row(
                          children: <Widget>[
                            Container(
                              width: 100,
                              height: 100,
                              child: Image.asset(imgList[index]),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(7.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    titleList[index],
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
                                    width: width,
                                    child: Row(children: <Widget>[
                                        Icon(Icons.star, color: Colors.yellow, size: 15),
                                        SizedBox(width: 1),
                                        Icon(Icons.star, color: Colors.yellow, size: 15),
                                        SizedBox(width: 1),
                                        Icon(Icons.star, color: Colors.yellow, size: 15),
                                        SizedBox(width: 1),
                                        Icon(Icons.star, color: Colors.yellow, size: 15),
                                        SizedBox(width: 1),
                                        Icon(Icons.star, color: UIData.lightColor, size: 15),
                                    ]),
                                  ),
                                  Container(
                                    width: width,
                                    child: Row(
                                      children: [
                                        Icon(Icons.group,
                                        color: Colors.green),
                                        Text(
                                          descList[index],
                                          maxLines: 3,
                                          style: TextStyle(
                                              fontSize: 15, color: Colors.grey[500]),
                                        ),
                                      ],
                                    ),
                                  ),
                                   Container(
                                    width: width,
                                    
                                    child: Row(
                                      children: [
                                        Icon(Icons.location_on,
                                        color: Colors.green),
                                        Text(
                                          addressList[index],
                                          maxLines: 3,
                                          style: TextStyle(
                                              fontSize: 15, color: Colors.grey[500]),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: width,
                                    
                                    child: Row(
                                      children: [
                                        Icon(Icons.attach_money,
                                        color: Colors.green),
                                        Text(
                                          price[index],
                                          maxLines: 3,
                                          style: TextStyle(
                                              fontSize: 15, color: Colors.blue[900]),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
         },
        // ignore: missing_return
        );
    return Scaffold(
      // Main List View With Builder
      body: Column(
  mainAxisSize: MainAxisSize.max,
  mainAxisAlignment: MainAxisAlignment.start,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    SizedBox(height: 8),
    // Padding(
    //     padding: EdgeInsets.all(5),
    //       child: Row(
    //       children: <Widget>[
    //         Expanded(
    //           child: TextField(
    //             decoration: ThemeHelper().textInputSearchDecoration("Tìm sân bóng","Nhập sân cần tìm... "),
    //           ),
    //         ),
            
    //       ],
    //     ),
    //   ),

    SelectFormField(
            initialValue: 'circle',
            icon: Icon(Icons.location_on),
            labelText: 'Tìm kiếm theo địa chỉ',
            items: _items,
            onChanged: (val) => print(val),
            onSaved: (val) => print(val),
          ),
    SizedBox(height: 10),
    Expanded(
      child: FutureBuilder(
	       initialData: listView, builder: (BuildContext context, AsyncSnapshot<ListView> snapshot) { return listView; },
      ),
    ),
  ],
)
      
      
    );
  }
      

        
}
  var titleList = [
    "Tây Hòa 1",
    "Tây Hòa 2",
    "Gia Hòa 1",
    "Đông Hòa 1",
    "U Hòa33 ",
    "Tăng Hòa 1",
    "Nam Hòa 1",
  ];

   final List<Map<String, dynamic>> _items = [
    {
      'value': 'boxValue',
      'label': 'Quận 1, TP Hồ Chí Minh',
      'icon': Icon(Icons.location_city),
    },
    {
      'value': 'circleValue',
      'label': 'Quận 2, TP Hồ Chí Minh',
      'icon': Icon(Icons.location_city),
    },
    {
      'value': 'starValue',
      'label': 'Quận 3, TP Hồ Chí Minh',
      'icon': Icon(Icons.location_city),
    },
    {
      'value': 'star1Value',
      'label': 'Quận 4, TP Hồ Chí Minh',
      'icon': Icon(Icons.location_city),
    },
    {
      'value': 'star2Value',
      'label': 'Thủ Đức, TP Hồ Chí Minh',
      'icon': Icon(Icons.location_city),
    },
     {
      'value': 'star4Value',
      'label':'       Bình Dương',
      'icon': Icon(Icons.sports_basketball),
    },
  ];

  // Description List Here
  var descList = [
    "Sân 5vs5 ",
    "Sân 5vs5 ",
    "Sân 5vs5 ",
    "Sân 7vs7 ",
    "Sân 7vs7 ",
    "Sân 7vs7 ",
    "Sân 7vs7 ",
  ];

  // Image Name List Here
  var imgList = [
    "images/sanco1.jpg",
    "images/sanco2.jpg",
    "images/sanco3.jpg",
    "images/sanco4.jpg",
    "images/sanco5.jpg",
    "images/sanco1.jpg",
    "images/sanco1.jpg",
  ];
  var addressList = [
    "1km - Tây hòa 1, Thủ Đức, Tp.HCM",
    "2km - Tây hòa 2, Thủ Đức, Tp.HCM",
    "3km - Tây hòa 3, Thủ Đức, Tp.HCM",
    "4km - Tây hòa 4, Thủ Đức, Tp.HCM",
    "5km - Tây hòa 5, Thủ Đức, Tp.HCM",
    "6km - Tây hòa 6, Thủ Đức, Tp.HCM",
    "7km - Tây hòa 7, Thủ Đức, Tp.HCM"
  ];
  var price = [
    "159k/slot",
    "159k/slot",
    "159k/slot",
    "179k/slot",
    "179k/slot",
    "179k/slot",
    "179k/slot",
  ];

// This is a block of Model Dialog 

      
//detail

showDialogFunc(context, img, title, desc, address, price) {
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
                                  style: TextStyle(color: Colors.green[900], fontSize: 30,fontWeight: FontWeight.bold),
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
                      "Từ 5h-17h: 159kslot\nTừ 17h-22h: 169k/slot",
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
                title:
                  Text('Căn tin', style: TextStyle(fontWeight: FontWeight.w300)),
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