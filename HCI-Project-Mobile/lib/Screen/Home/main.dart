import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:material_color_utilities/material_color_utilities.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget widget = Container();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            elevation: 0,
            leading:
                IconButton(onPressed: null, icon: Icon(Icons.notifications)),
            centerTitle: true,
            title: Text('Foot Ball App'),
            foregroundColor: Colors.white,
            backgroundColor: Colors.green[400]),
        body: HomeScreen(),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.green[400],
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.black,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(label: "", icon: Icon(Icons.home)),
              BottomNavigationBarItem(label: "", icon: Icon(Icons.chat_bubble)),
              BottomNavigationBarItem(label: "", icon: Icon(Icons.search)),
              BottomNavigationBarItem(label: "", icon: Icon(Icons.settings)),
            ]),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: <Widget>[
                Container(
                  height: size.height * 0.2,
                  child: Stack(
                    children: <Widget>[
                      Text(
                        "Sân Có Sẵn",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.red,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            height: size.height * 0.2,
            child: Expanded(
              child: Stack(),
            ),
          )
        ],
      ),
    );
  }
}
