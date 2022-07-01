import 'package:flutter/material.dart';

class imageTextHost2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
            height: 100,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: new Image.asset(
                    'images/sanco5.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            )),
      ],
    );
  }
}
