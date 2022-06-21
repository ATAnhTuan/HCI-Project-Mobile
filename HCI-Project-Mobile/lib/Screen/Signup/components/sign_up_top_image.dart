import 'package:flutter/material.dart';
import '../../../components/constants.dart';


class SignUpScreenTopImage extends StatelessWidget {
  const SignUpScreenTopImage({
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
              flex:8,
              child: Image.asset("assets/images/Enter OTP-amico.png"),
            ),
            const Spacer(),
          ],
        ),
        Text(
          "Đăng ký",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: defaultPadding * 2),
      ],
    );
  }
}