import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // OutlinedButton(
            //   onPressed: () {},
            //   child: Text(
            //     "CANCEL",
            //     style: TextStyle(
            //       color: Colors.black,
            //       letterSpacing: 2.2,
            //     ),
            //   ),
            //   style: OutlinedButton.styleFrom(
            //     shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(30),
            //     ),
            //     padding: EdgeInsets.symmetric(
            //       horizontal: 50,
            //       vertical: 10,
            //     ),
            //     textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            //     primary: Colors.blue,
            //     side: BorderSide(width: 1, color: Colors.grey),
            //   ),
            // ),
            OutlinedButton(
              onPressed: () {},
              child: Text(
                "Cập nhật",
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.2,
                ),
              ),
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 125,
                  vertical: 16,
                ),
                textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                primary: Colors.blue,
                side: BorderSide(width: 1, color: Colors.grey),
                backgroundColor: Colors.green[400],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
