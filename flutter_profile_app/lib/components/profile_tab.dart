import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///////////////////////////////////
//상태가 있는 위젯을 만들어 보자.
// 1. StatefulWidget 위젯을 상속 받았다.
class ProfileTab extends StatefulWidget {
  const ProfileTab({super.key});

  @override
  State<ProfileTab> createState() => _ProfileTabState();
} // end of ProfileTab

class _ProfileTabState extends State<ProfileTab>
    with SingleTickerProviderStateMixin {
  // 멤버 변수
  // TabController는 TabBar 와 TabBarView 를 동기화 하는 컨트롤러 입니다.
  TabController? _tabController;
  @override
  void initState() {
    super.initState();
    print("프로필 탭 내부 클래스 init 호출 했다.");
    // length 는 탭의 개수를 의미한다.
    // vsync 는 자연스러운 애니메이션 전환을 위해서 TickerProvider 를
    // 활용한다.
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [_buildTabBar(), _buildTabBarView()],
    );
  }

  Expanded _buildTabBarView() {
    final List<String> imagePaths = List.generate(
      9,
      (index) => 'assets/images/${index + 1}.jpeg',
    );
    return Expanded(
        child: TabBarView(
      controller: _tabController,
      children: [
        GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 3,
          ),
          itemBuilder: (context, index) {
            return Image.network('https://picsum.photos/id/${index}/200/200');
          },
        ),

        GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 3,
          ),
          itemCount: imagePaths.length,
          itemBuilder: (context, index) {
            return Image.asset(
              imagePaths[index],
            );
          },
        ),
        Container(
          width: 50,
          height: 100,
        ),
        //스스로 꾸며보기
        Container(
          width: 50,
          height: 100,
        ),
      ],
    ));
  }

  TabBar _buildTabBar() {
    return TabBar(
      //중간 매개체로 연결
      controller: _tabController,
      tabs: [
        Tab(
          icon: Icon(Icons.dialpad_rounded),
        ),
        Tab(
          icon: Icon(Icons.access_alarm_rounded),
        ),
      ],
    );
  }
}
