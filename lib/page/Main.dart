import 'package:flutter/material.dart';
import 'dart:ffi';
import 'Chat.dart';
import 'Mail.dart';
import 'Meet.dart';
import 'Rooms.dart';

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<Main> {
  int _currentIndex=0;
  List<Widget>_children=[ Mail(), Chat(), HomePage(), Meet(),];

  void onTappedBar(int index)
  {
    setState(() {
      _currentIndex=index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: onTappedBar,
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          items:<BottomNavigationBarItem> [
            BottomNavigationBarItem(
              icon: Icon(Icons.email),
              label: 'Mail',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble_outline_sharp),
              label: 'Chat',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.room_preferences),
              label: 'Rooms',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.video_call_outlined),
              label: 'Meet',
            ),

          ],
        ),

      ),
    );
  }
}


