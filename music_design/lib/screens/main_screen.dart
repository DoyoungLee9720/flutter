import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_design/screens/mainhome/mainhome_page.dart';
import 'package:music_design/screens/myinfo/myinfo_page.dart';
import 'package:music_design/screens/mysong/mysong_page.dart';
import 'package:music_design/screens/search/search_page.dart';
// import는 가능한 상대경로를 사용하자.

// 바텀네비게이션을 들고 있다.
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0; // 현재 선택된 탭의 인덱스를 저장하는 변수

  // 상태(속성)은 행위를 통해서 변경해야 한다.
  void changeStackPages(int index) {
    setState(() {
      _selectedIndex = index; // 탭 변경 시 상태 업데이트 build() 재 호출
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // 현재 선택된 인덱스 번호를 활용해서 해당하는 위젯을
        // 화면에 그려줄 수 있다.
        body: IndexedStack(
          // 현재 선택된 인덱스 번호 설정
          index: _selectedIndex,
          children: [
            MainhomePage(),
            MysongPage(),
            MyinfoPage(),
            SearchPage(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          // 동일한 크기의 탭을 만들어 준다.
          type: BottomNavigationBarType.fixed,
          // 현재 선택된 탭 번호 명시
          currentIndex: _selectedIndex,
          onTap: (index) {
            changeStackPages(index);
          },
          items: [
            BottomNavigationBarItem(
              label: '홈',
              icon: Icon(CupertinoIcons.home),
            ),
            BottomNavigationBarItem(
              label: '내 노래',
              icon: Icon(CupertinoIcons.music_albums),
            ),
            BottomNavigationBarItem(
              label: '내정보',
              icon: Icon(CupertinoIcons.person),
            ),
            BottomNavigationBarItem(
              label: '검색',
              icon: Icon(CupertinoIcons.search),
            ),
          ],
        ),
      ),
    );
  }
}
