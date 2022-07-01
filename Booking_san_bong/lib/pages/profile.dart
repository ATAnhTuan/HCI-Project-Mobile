import 'package:Booking_san_bong/pages/components/body.dart';
import 'package:flutter/material.dart';
import 'package:Booking_san_bong/uidata.dart';
import 'package:Booking_san_bong/widgets/button.dart';
import 'package:Booking_san_bong/widgets/button3.dart';
import 'components/body.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState  createState() => _ProfilePageState ();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
    appBar: AppBar(title: Text("Hồ sơ"),
    backgroundColor: Colors.green,
    ),     
    body: Body(),   
    );
  }
}
