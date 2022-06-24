import 'package:flutter/material.dart';

import '../../../components/constants.dart';


class ForgetPasswordTopImage extends StatelessWidget {
  const ForgetPasswordTopImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Spacer(),
            Expanded(
              flex:30,
              child: Image.asset("assets/images/quenmatkhau.png"),
            ),
          ],
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Container(
            child:
              Text(
                "Quên mật khẩu?",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),

          ),
        ),
        SizedBox(height: defaultPadding * 2),
      ],
    );
  }
}