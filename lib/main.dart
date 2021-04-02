import 'package:amazon_music_clone/prime-home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        fontFamily: 'Muli',
        brightness: Brightness.dark
      ),
      home: PrimeMusicHomePage(),
    );
  }
}
