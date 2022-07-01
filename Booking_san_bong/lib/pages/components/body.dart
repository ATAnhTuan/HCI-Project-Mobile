import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../uidata.dart';
import 'profile_fic.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfilePic(),
        SizedBox(height: 20),
        ProfileMenu(
          icon: "icons/user.svg",
          text: "My Account",
          press: ()=> Navigator.pushNamed(
                                context, UIData.myAccount),
        ),
        ProfileMenu(
          icon: "icons/CameraIcon.svg",
          text: "Notification",
          press: ()=> Navigator.pushNamed(
                                context, UIData.notificationPageRoute),
        ),
        ProfileMenu(
          icon: "icons/CameraIcon.svg",
          text: "Setting",
          press: () {},
        ),
        ProfileMenu(
          icon: "icons/CameraIcon.svg",
          text: "Help Center ",
          press: () {},
        ),
        ProfileMenu(
          icon: "icons/CameraIcon.svg",
          text: "Logout",
           press: ()=> Navigator.pushNamed(
                                context, UIData.introPageRoute),
        ),
      ],
    );
  }
}

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    @required this.text,
    @required this.icon,
    @required this.press,
    Key key,
  }) : super(key: key);
  final String text, icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: FlatButton(
          padding: EdgeInsets.all(20),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          color: Color.fromARGB(255, 249, 249, 255),
          onPressed: press,
          child: Row(
            children: [
              SvgPicture.asset(
                icon,
                width: 22,
                color: Colors.transparent,
              ),
              SizedBox(width: 100),
              Expanded(
                  child:
                      Text(text, style: Theme.of(context).textTheme.bodyText1)),
              Icon(Icons.arrow_forward_ios)
            ],
          )),
    );
  }
}
