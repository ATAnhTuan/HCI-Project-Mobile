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
              flex:30,
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
                "Đăng Ký",
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