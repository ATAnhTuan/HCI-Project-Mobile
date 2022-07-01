
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screen/profile/components/body.dart';

import 'components/bodyOwner.dart';

class ProfileScreenOwner extends StatelessWidget {
  const ProfileScreenOwner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white.withOpacity(.94),
        appBar: buildAppBar(context),
        body: BodyOwner(),
        // bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.profile),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.green[400],
      leading: SizedBox(),
      // On Android it's false by default
      centerTitle: true,
      title: Text("Hồ sơ"),
      actions: const <Widget>[
      /*  TextButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const UserScreen()));
          },
          child: Text(
            "Sửa",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16, //16
              fontWeight: FontWeight.bold,
            ),
          ),
        ),*/
      ],
    );
  }
}
