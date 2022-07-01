import 'package:flutter/material.dart';
import 'package:Booking_san_bong/widgets/button2.dart';

class ImageCard2 extends StatefulWidget {
  final String cardImg;

  const ImageCard2({Key key, this.cardImg}) : super(key: key);

  @override
  _ImageCard2State createState() => _ImageCard2State();
}

class _ImageCard2State extends State<ImageCard2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .3,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          image: DecorationImage(
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.6), BlendMode.darken),
              image: AssetImage(widget.cardImg),
              fit: BoxFit.cover)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Đang chờ...",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              )),
          // SizedBox(height: 15),
          // MyButton2(btnText: "Khuyến mãi 22%", onpressed: () {})
        ],
      ),
    );
  }
}
