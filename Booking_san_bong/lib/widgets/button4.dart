import 'package:flutter/material.dart';
import 'package:Booking_san_bong/uidata.dart';

class MyButton4 extends StatelessWidget {
  final String btnText;
  final VoidCallback onpressed;

  const MyButton4({Key key, this.btnText, this.onpressed}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 1,
      height: 40,
      child: FlatButton(
        color: Colors.white,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
        onPressed: onpressed,
        child: Text(btnText,
            style: TextStyle(
                color: Colors.black54,
                fontSize: 12,
                fontWeight: FontWeight.normal)),
      ),
    );
  }
}
