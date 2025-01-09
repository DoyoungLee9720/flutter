import 'package:flutter/material.dart';
import 'package:flutter_profile_app/theme.dart';

void main() {
  runApp(const MyApp());
}

//MyApp -> MaterialApp 사용하기
class MyApp extends StatelessWidget {
  //객체를 const 사용하려면 생성자가 const 생성자 이어야 한다.

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      home: ProfilePage(),
    );
  }
}

//페이지 단위에 위젯을 만들어보자. --> 클래스로 만들어 보자.
// 우리들에 규칙 2 <--- Scaffold
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
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
            // 프로필 카운트 정보,
            const SizedBox(height: 20),
            // 프로필 버튼 2개,
            // 탭바 영역
          ],
        ),
      ),
    );
  }
} // end of ProfilePage

// 클래스로 만들어 보자.
// 프로필 헤더 위젯 클래스
class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 20),
        SizedBox(
          width: 100,
          height: 100,
          child: CircleAvatar(
            //AssetImage는 보통 위젯의 배경으로 동작할 때 , 꾸밀때
            // 많이 활용하는 위젯이다.
            backgroundImage: AssetImage('assets/avatar.png'),
          ),
        ),
        const SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '홍길동',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              '프로그래머/작가',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              '데어 프로그래밍',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        )
      ],
    );
  }
}
