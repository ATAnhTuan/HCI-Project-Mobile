import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screen/User/UserScreen.dart';
import 'Screen/Home/BottomBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomBar(),
    );
  }
}

// class BottomBar extends StatefulWidget {
//   const BottomBar({Key? key}) : super(key: key);

//   @override
//   State<BottomBar> createState() => _MyStatefulWidgetState();
// }

// class _MyStatefulWidgetState extends State<BottomBar> {
//   int _selectedIndex = 0;
//   static const TextStyle optionStyle =
//       TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
//   static const List<Widget> _widgetOptions = <Widget>[
//    HomeScreen(),
//     Text(
//       'Index 1: Chat',
//       style: optionStyle,
//     ),
//     Text(
//       'Index 2: Search',
//       style: optionStyle,
//     ),
//     Text(
//       'Index 3: Profile',
//       style: optionStyle,
//     )
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: _widgetOptions.elementAt(_selectedIndex),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         type: BottomNavigationBarType.fixed,
//         backgroundColor: Colors.green[400],
//         unselectedItemColor: Colors.white,
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home_outlined),
//             label: 'Trang Chủ',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.chat_bubble_outline),
//             label: 'Chat',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.search_outlined),
//             label: 'Tìm kiếm',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person_outlined),
//             label: 'Thông Tin',
//           )
//         ],
//         currentIndex: _selectedIndex,
//         selectedItemColor: Colors.white,
//         onTap: _onItemTapped,
//       ),
//     );
//   }
// }