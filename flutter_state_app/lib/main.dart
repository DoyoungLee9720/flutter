import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyStatelessWidget()));
}

// Stateless
// 상태의 변화 없이 항상 동일한 UI를 그립니다.
// 이런 위젯은 데이터나 변수의 값이 변하지 않을 때 사용합니다.

class MyStatelessWidget extends StatelessWidget {
  // 변수에 final 키워드 즉 상수이다.
  final msg = '안녕하세요! 저는 Stateless 위젯입니다.';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateless Widget Example'),
      ),
      body: Center(
        child: Text(msg),
      ),
    );
  }
}
