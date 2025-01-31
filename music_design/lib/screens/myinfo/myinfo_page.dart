import 'package:flutter/material.dart';
import 'package:music_design/components/appbar_preferred_size.dart';
import 'package:music_design/models/icon_menu.dart';
import 'package:music_design/screens/myinfo/components/my_info_card.dart';
import 'package:music_design/screens/myinfo/components/my_info_header.dart';

class MyinfoPage extends StatelessWidget {
  const MyinfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('내 정보'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings, color: Colors.grey),
          )
        ],
        bottom: appBarBottomLine(),
      ),
      body: ListView(
        children: [
          //헤더
          MyInfoHeader(),
          //아이콘 메뉴 1 - 카드 레이아웃
          const SizedBox(height: 8.0),
          MyInfoCard(iconlist: iconMenu1),
          //아이콘 메뉴 2 - 카드 레이아웃
          const SizedBox(height: 8.0),
          MyInfoCard(iconlist: iconMenu2),
          //아이콘 메뉴 3 - 카드 레이아웃
          const SizedBox(height: 8.0),
          // CardIconMenu(iconlist: iconMenu3),
        ],
      ),
    );
  }
}
