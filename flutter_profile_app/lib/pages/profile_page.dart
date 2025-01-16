import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/profile_buttons.dart';
import '../components/profile_count_info.dart';
import '../components/profile_header.dart';
import '../components/profile_tab.dart';
//페이지 단위에 위젯을 만들어보자. --> 클래스로 만들어 보자.
// 우리들에 규칙 2 <--- Scaffold

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('profile'),
        ),
        endDrawer: Container(
          width: 200,
          //double.infinity <-- 가능한 최대로 확장 하라
          //height: double.infinity,
          color: Colors.blue,
        ),
        body: Column(
          children: [
            const SizedBox(height: 20),
            // 프로필 헤더,
            ProfileHeader(),
            const SizedBox(height: 20),
            ProfileCountInfo(),
            const SizedBox(height: 20),
            // 프로필 버튼 2개,
            ProfileButtons(),
            // 탭바 영역
            Expanded(child: ProfileTab()),
          ],
        ),
      ),
    );
  }
} // end of ProfilePage
