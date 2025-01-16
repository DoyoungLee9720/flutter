import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// 클래스로 만들어 보자.
// 프로필 헤더 위젯 클래스
class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 20),
        _buildAvatar(),
        const SizedBox(width: 20),
        _buildHeaderProfile()
      ],
    );
  }

  SizedBox _buildAvatar() {
    return SizedBox(
      width: 100,
      height: 100,
      child: CircleAvatar(
        //AssetImage는 보통 위젯의 배경으로 동작할 때 , 꾸밀때
        // 많이 활용하는 위젯이다.
        backgroundImage: AssetImage('assets/avatar.png'),
      ),
    );
  }

  Column _buildHeaderProfile() {
    return Column(
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
    );
  }
}
