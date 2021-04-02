import 'package:amazon_music_clone/global_vars.dart';
import 'package:amazon_music_clone/widgets/home_page.dart';
import 'package:amazon_music_clone/widgets/library_page.dart';
import 'package:amazon_music_clone/widgets/search_page.dart';
import 'package:flutter/material.dart';

class PrimeMusicHomePage extends StatefulWidget {
  @override
  _PrimeMusicHomePageState createState() => _PrimeMusicHomePageState();
}

class _PrimeMusicHomePageState extends State<PrimeMusicHomePage> {

  int _currentIndex = 0;

  List<Widget> _body = [
    HomePage(),
    SearchPage(),
    LibraryPage()
  ];

  onTabSwitch(index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        leading: IconButton(
          icon: Icon(Icons.notifications_active),
          onPressed: () {},
        ),
        centerTitle: true,
        title: Row(
          children: [
            SizedBox(width: 60.0),
            Image.asset('assets/images/amazon-music.png', fit: BoxFit.fill, height: 25.0),
            SizedBox(width: 85.0),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {},
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabSwitch,
        backgroundColor: bgColor,
        selectedItemColor: selectedAccentColor,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Find"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_music),
            label: "Library"
          ),
        ],
      ),
      body: _body[_currentIndex],
    );
  }
}
