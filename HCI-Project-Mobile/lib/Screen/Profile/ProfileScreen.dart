import 'package:flutter/material.dart';

import 'components/body.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white.withOpacity(.94),
        appBar: buildAppBar(),
        body: Body(),
        // bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.profile),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.green[400],
      leading: SizedBox(),
      // On Android it's false by default
      centerTitle: true,
      title: Text("Hồ sơ"),
      actions: <Widget>[
        TextButton(
          onPressed: () {},
          child: Text(
            "Sửa",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16, //16
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
