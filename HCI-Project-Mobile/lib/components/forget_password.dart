import 'dart:ffi';

import 'package:flutter/material.dart';
import 'constants.dart';

class ForgetPasswordCheck extends StatelessWidget {
  final bool login;
  final Function? press;
  const ForgetPasswordCheck({
    Key? key,
    this.login = true,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login
              ? "                                                "
              : "                           ",
          style: const TextStyle(color: kPrimaryColor),
        ),
        GestureDetector(
          onTap: press as void Function()?,
          child: Text(
            login ? "Quên mật khẩu?" : "Quên mật khẩu?",
            style: const TextStyle(
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        )
      ],
    );
  }
}
