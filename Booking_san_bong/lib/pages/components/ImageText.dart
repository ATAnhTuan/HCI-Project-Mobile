import 'package:flutter/material.dart';

class imageText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
            height: 200,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
                new Image.asset(
                  'images/sanco1.jpg',
                  fit: BoxFit.cover,
                ),
              ],
            )),
      ],
    );
  }
}
