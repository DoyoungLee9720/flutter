import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyStatefulWidget()));
}

// 포인트 !
// 사실 상태는 변수에 할당된 값 입니다. 단, 변화할 수 있는 변수입니다.
class MyStatefulWidget extends StatefulWidget {
  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  // final + 변수 = 상수
  final msg = '저는 Statefull 위젯입니다.';

  // fianl이 아님 상수가 아니기 때문에 언제든지 변경이 가능하다.
  // 즉 여기는 "상태 변수"라고 하자
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful Widget Example'),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            // setState()는 상태가 변경되었음을 Flutter 프레임워크에 알려주는 함수입니다.
            // 이를 통해 프레임워크가 해당 위젯을 다시 그려서(build() 재호출) 변경된 상태를 반영할 수 있도록 합니다.
            setState(() {
              count += 1;
            });
          },
          child: Text('$msg onTap Count : $count'),
        ),
      ),
    );
  }
}
