import 'package:flutter/material.dart';
import 'package:amazon_music_clone/global_vars.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      margin: EdgeInsets.symmetric(vertical: 10.0),
      color: bgColor,
      child: Column(
        children: [
          Container(
            height: 40.0,
            // padding: EdgeInsets.only(top: 5.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(60.0))
            ),
            child: Row(
              children: [
                SizedBox(width: 10.0),
                Icon(Icons.search, color: Colors.grey[800], size: 20.0),
                SizedBox(width: 15.0),
                SizedBox(
                  width: 230.0,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search Amazon Music",
                      hintStyle: TextStyle(color: Colors.grey[800], fontFamily: 'Muli', fontSize: 15.0),
                      fillColor: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 50.0),
          Container(
            height: 30.0,
            child: Stack(
              children: [
                Positioned(
                  left: 0.0,
                  child: Text('Stations', style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Muli',
                  ),),
                ),
                Positioned(
                  right: 0.0,
                  child: Icon(Icons.arrow_forward_ios, color: Colors.white, size: 15.0)
                )
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
            thickness: 1.0,
          ),
          SizedBox(height: 10.0),
          Container(
            height: 30.0,
            child: Stack(
              children: [
                Positioned(
                  left: 0.0,
                  child: Text('Playlists', style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Muli',
                  ),),
                ),
                Positioned(
                  right: 0.0,
                  child: Icon(Icons.arrow_forward_ios, color: Colors.white, size: 15.0)
                )
              ],
            ),
          ),
          SizedBox(height: 390.0),
          Divider(
            color: Colors.grey,
            thickness: 1.0,
          ),
          Container(
            height: 50.0,
            child: Stack(
              children: [
                Positioned(
                  left: 0.0,
                  child: Image.asset('assets/images/rudrashtakam.jpg', height: 50.0),
                ),
                Positioned(
                  left: 60.0,
                  child: Column(
                    children: [
                      Text('Rudrashtakam', style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Muli',
                      ),),
                      Text('Agam Aggarwal', style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Muli',
                        fontSize: 12.0
                      ),),
                    ],
                  ),
                ),
                Positioned(
                  right: 0.0,
                  top: 5.0,
                  child: Row(
                    children: [
                      Icon(Icons.play_arrow, color: Colors.white, size: 30.0),
                      SizedBox(
                        width: 20.0,
                      ),
                      Icon(Icons.double_arrow_rounded, color: Colors.grey, size: 30.0)
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      )
    );
  }
}