import 'package:flutter/material.dart';

import 'components/body.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: buildAppBar(context),
        body: Body(),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.green[400],
      leading:IconButton(icon:  Icon(Icons.arrow_back,),onPressed: (){
        Navigator.pop(context);
      }),
      // On Android it's false by default
      centerTitle: true,
      title: Text("Chỉnh sửa hồ sơ"),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 16),
          child: PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                onTap: () {},
                child: Row(
                  children: [
                    Icon(
                      Icons.delete_forever,
                      color: Colors.black54,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Text("Xóa tài khoản"),
                    ),
                  ],
                ),
              ),
              PopupMenuItem(
                onTap: () {},
                child: Row(
                  children: [
                    Icon(
                      Icons.lock,
                      color: Colors.black54,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Text("Đổi mật khẩu"),
                    ),
                  ],
                ),
              ),
              PopupMenuItem(
                onTap: () {},
                child: Row(
                  children: [
                    Icon(
                      Icons.share,
                      color: Colors.black54,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Text("Share"),
                    ),
                  ],
                ),
              ),
            ],
            child: Icon(
              Icons.more_vert,
              size: 24,
            ),
          ),
        ),
      ],
    );
  }
}
