import 'package:flutter/material.dart';

import '../../../components/constants.dart';


class LoginScreenTopImage extends StatelessWidget {
  const LoginScreenTopImage({
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
              flex:5,
              child: Image.asset("assets/images/login.png"),
            ),
            const Spacer(),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(left: 25),
          child: Row(
            children: const [
              Text(
                "Đăng nhập",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ],
          ),
        ),
        SizedBox(height: defaultPadding * 2),
      ],
    );
  }
}