import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:music_design/components/appbar_preferred_size.dart';
import 'package:music_design/screens/mainhome/components/main_newmusic.dart';
import 'package:music_design/screens/mainhome/components/main_recomend.dart';

class MainhomePage extends StatelessWidget {
  const MainhomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('홈'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.mic, color: Colors.grey),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(FontAwesomeIcons.bell, color: Colors.grey),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.ellipsis_vertical, color: Colors.grey),
          ),
        ],
        bottom: appBarBottomLine(),
      ),
      body: ListView(
        children: [
          Text(
            "뮤직4U",
            style: TextStyle(
              fontSize: 28,
              color: Colors.black,
              fontWeight: FontWeight.w700,
            ),
          ),
          RecomendSongs(),
          const SizedBox(height: 8.0),
          Text(
            "최신음악",
            style: TextStyle(
              fontSize: 28,
              color: Colors.black,
              fontWeight: FontWeight.w700,
            ),
          ),
          NewSongs(),
          const SizedBox(height: 8.0),
          const SizedBox(height: 8.0),
        ],
      ),
    );
  }
}
