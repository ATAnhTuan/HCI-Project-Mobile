import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screen/Owner/Add.dart';
import 'package:flutter_application_1/Screen/Owner/HomeScreenOwner.dart';
import 'package:flutter_application_1/Screen/setting/ProfileScreenOwner.dart';
import '../Profile/ProfileScreen.dart';
import 'package:flutter_application_1/Screen/Search/SearchScreen.dart';
import '../../Screen/Chat/ChatList.dart';

class Ownerpage extends StatefulWidget {
  const Ownerpage({Key? key}) : super(key: key);

  @override
  State<Ownerpage> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<Ownerpage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
   HomeScreenOwner()
   ,
    ChatList()
    ,
    Add()
    ,
   ProfileScreenOwner()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.green,
        unselectedItemColor: Colors.black,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Trang Chủ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined),
            label: 'Thêm Sân',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box_rounded),
            label: 'Thông Tin',
          )
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
