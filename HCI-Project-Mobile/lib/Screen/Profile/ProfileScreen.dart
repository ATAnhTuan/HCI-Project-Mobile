
import 'package:flutter/material.dart';

import 'components/body.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white.withOpacity(.94),
        appBar: buildAppBar(context),
        body: Body(),
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
