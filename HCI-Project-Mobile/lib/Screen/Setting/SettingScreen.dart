import 'package:babstrap_settings_screen/babstrap_settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screen/setting/Lichsu.dart';
import 'package:flutter_application_1/Screen/setting/Yeuthich.dart';
import 'package:flutter_application_1/Screen/setting/danhgia.dart';

class SettingWidget extends StatelessWidget {
  const SettingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white.withOpacity(.94),
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
          ),
          title: Text(
            "Settings",
            style:
                TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
          ),
          centerTitle: true,
          backgroundColor: Colors.green[400],
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: ListView(
            children: [
              /*  BigUserCard(
                cardColor: Colors.green,
                userName: "Trần Gia Hoàng",
                userProfilePic: AssetImage("assets/images/hoangtran.jpg"),
                cardActionWidget: SettingsItem(
                  icons: Icons.edit,
                  iconStyle: IconStyle(
                    withBackground: true,
                    borderRadius: 50,
                    backgroundColor: Colors.yellow[600],
                  ),
                  title: "Chỉnh sửa hồ sơ",
                  subtitle: "Xem chi tiết",
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const UserScreen()));
                  },
                ),
              ),*/
              SettingsGroup(
                settingsGroupTitle: "Tiện ích",
                iconItemSize: 24.0,
                items: [
                  SettingsItem(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Yeuthich()));
                    },
                    icons: Icons.favorite,
                    iconStyle: IconStyle(
                      iconsColor: Colors.red,
                      backgroundColor: Colors.white,
                      withBackground: true,
                    ),
                    title: "Yêu thích",
                    subtitle: "Xem sân bạn đã thích",
                  ),
                  SettingsItem(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Lichsu()));
                    },
                    icons: Icons.history,
                    iconStyle: IconStyle(
                      iconsColor: Colors.blue,
                      backgroundColor: Colors.white,
                      withBackground: true,
                    ),
                    title: "Lịch sử",
                    subtitle: "Xem lại lịch sử sân",
                  ),
                  SettingsItem(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Danhgia()),
                      );
                    },
                    icons: Icons.feedback,
                    iconStyle: IconStyle(
                      iconsColor: Colors.yellow[400],
                      backgroundColor: Colors.white,
                      withBackground: true,
                    ),
                    title: "Gửi feedback",
                    subtitle: "Gửi đánh giá dịch vụ sản phẩm",
                  ),
                  SettingsItem(
                    onTap: () {},
                    icons: Icons.logout,
                    iconStyle: IconStyle(
                      iconsColor: Colors.black,
                      backgroundColor: Colors.white,
                      withBackground: true,
                    ),
                    title: "Đăng xuất",
                    subtitle: "Log out",
                  ),
                ],
              ),
              SettingsGroup(
                settingsGroupTitle: "Tùy chọn",
                items: [
                  SettingsItem(
                    onTap: () {},
                    icons: Icons.language,
                    iconStyle: IconStyle(
                      iconsColor: Colors.blue,
                      withBackground: true,
                      backgroundColor: Colors.white,
                    ),
                    title: "Ngôn ngữ",
                    subtitle: "Tiếng Việt",
                  ),
                  SettingsItem(
                    onTap: () {},
                    icons: Icons.dark_mode_rounded,
                    iconStyle: IconStyle(
                      iconsColor: Colors.black,
                      withBackground: true,
                      backgroundColor: Colors.white,
                    ),
                    title: 'Dark mode',
                    subtitle: "Automatic",
                    trailing: Switch.adaptive(
                      value: false,
                      onChanged: (value) {},
                    ),
                  ),
                ],
              ),
              SettingsGroup(
                settingsGroupTitle: "Thông tin và Hỗ trợ",
                items: [
                  SettingsItem(
                    onTap: () {},
                    icons: Icons.info,
                    iconStyle: IconStyle(
                      iconsColor: Colors.grey,
                      withBackground: true,
                      backgroundColor: Colors.white,
                    ),
                    title: "Về chúng tôi",
                    subtitle: "Xem chi tiết",
                  ),
                  SettingsItem(
                    onTap: () {},
                    icons: Icons.question_mark,
                    iconStyle: IconStyle(
                      iconsColor: Colors.grey,
                      withBackground: true,
                      backgroundColor: Colors.white,
                    ),
                    title: "Câu hỏi thường gặp",
                    subtitle: "Xem chi tiết",
                  ),
                  SettingsItem(
                    onTap: () {},
                    icons: Icons.phone,
                    iconStyle: IconStyle(
                      iconsColor: Colors.grey,
                      withBackground: true,
                      backgroundColor: Colors.white,
                    ),
                    title: "Liên hệ với chúng tôi",
                    subtitle: "Xem chi tiết",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
