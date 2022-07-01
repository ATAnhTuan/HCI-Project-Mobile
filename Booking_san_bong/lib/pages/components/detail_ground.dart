// import 'package:Booking_san_bong/widgets/button.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/widget_span.dart';
// import 'package:Booking_san_bong/widgets/image_card2.dart';
// import 'package:Booking_san_bong/widgets/button2.dart';
// import '../../uidata.dart';

// class DetailGround extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         Container(
//             height: 250,
//             child: ListView(
//               scrollDirection: Axis.horizontal,
//               children: <Widget>[
//                 new Image.asset(
//                   'images/sanco1.jpg',
//                   fit:BoxFit.cover,
//                 ),
//               ],
//             )),
            
//         Container(
//            padding: EdgeInsets.fromLTRB(80, 0, 0, 0),
//           child: Column(
          
//             children: [
//               ListTile(
//             title:
//                 Text('TÂY HÒA 1 ', style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold)),
//             // subtitle: Text(''),
//             leading: Icon(
//               Icons.sports_soccer,
//               color: Colors.green,
//             ),
//           ),
//             ],
//           ),
//         ),

//          Container(
//              padding: EdgeInsets.fromLTRB(150, 0, 0, 0),
//             child: Row(children: <Widget>[
//                     Icon(Icons.star, color: Colors.yellow, size: 18),
//                     SizedBox(width: 1),
//                     Icon(Icons.star, color: Colors.yellow, size: 18),
//                     SizedBox(width: 1),
//                     Icon(Icons.star, color: Colors.yellow, size: 18),
//                     SizedBox(width: 1),
//                     Icon(Icons.star, color: Colors.yellow, size: 18),
//                     SizedBox(width: 1),
//                     Icon(Icons.star, color: Colors.yellow, size: 18),
//                   ]),
//           ),


//         Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ListTile(
//           title:
//               Text('Sân 1, 235, Tây Hòa, Linh Mục, Thủ Đức', style: TextStyle(fontWeight: FontWeight.bold)),
//           // subtitle: Text(''),
//           leading: Icon(
//             Icons.location_on,
//             color: Colors.green,
//           ),
//         )
//           ],
//         ),
//         Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
//           Expanded(
//               child: Text("   Dịch vụ tại địa điểm",
//                   maxLines: 1,
//                   overflow: TextOverflow.ellipsis,
//                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600))),
//         ]),

//         ListTile(
//           title:
//               Text('Nhà hàng', style: TextStyle(fontWeight: FontWeight.w300)),
//           // subtitle: Text(''),
//           leading: Icon(
//             Icons.restaurant,
//             color: Colors.green,
//           ),
//         ),
//         ListTile(
//           title: Text('Trọng tài',
//               style: TextStyle(fontWeight: FontWeight.w300)),
//           // subtitle: Text(''),
//           leading: Icon(
//             Icons.sports_sharp,
//             color: Colors.green
//           ),
//         ),
//         ListTile(
//           title: Text('Wifi', style: TextStyle(fontWeight: FontWeight.w300)),
//           // subtitle: Text(''),
//           leading: Icon(
//             Icons.wifi,
//             color: Colors.green
//           ),
//         ),
//         ListTile(
//           title: Text('Chổ để xe', style: TextStyle(fontWeight: FontWeight.w300)),
//           // subtitle: Text(''),
//           leading: Icon(
//             Icons.local_parking,
//              color: Colors.green
//           ),
//         ),
//         ListTile(
//           title: Text('Có vòi hoa sen',
//               style: TextStyle(fontWeight: FontWeight.w300)),
//           // subtitle: Text(''),
//           leading: Icon(
//             Icons.shower_sharp,
//              color: Colors.green
//           ),
//         ),
//                   MyButton(btnText: "Đặt Lịch",
//             onpressed: () =>
//                       Navigator.pushNamed(context, UIData.bookPageRoute)),

//       ],
//     );
//   }
// }
