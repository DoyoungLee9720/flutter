import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ParentsView(),
    );
  }
}

class ParentsView extends StatefulWidget {
  const ParentsView({super.key});

  @override
  State<ParentsView> createState() => _ParentsViewState();
}

class _ParentsViewState extends State<ParentsView> {
  String displayText = '여기는 부모 위젯 변수야';

  //메서드를 선언해 보자
  void handleChildEvent(String type) {
    //build() 메서드 호출
    setState(() {
      displayText = type + ' 자식 위젯에서 이벤트 발생';
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(flex: 1, child: Center(child: Text(displayText))),
            Expanded(
                flex: 1, child: ChildA(onCallbackReceived: handleChildEvent)),
            Expanded(
                flex: 1, child: ChildB(onCallbackReceived: handleChildEvent)),
          ],
        ),
      ),
    );
  }
}

class ChildA extends StatelessWidget {
  const ChildA({required this.onCallbackReceived, super.key});

  final Function onCallbackReceived;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: InkWell(
        onTap: () {
          print('child a 에 이벤트 발생');
          //Function 데이터 타입
          //onCallbackReceived() ---> 호출
          onCallbackReceived('A');
        },
        child: Container(
          width: double.infinity,
          color: Colors.orange,
          child: Center(child: Text('CHILD A')),
        ),
      ),
    );
  }
}

class ChildB extends StatelessWidget {
  const ChildB({required this.onCallbackReceived, super.key});

  final Function onCallbackReceived;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: InkWell(
        onTap: () {
          print('child b 에 이벤트 발생');
          //Function 데이터 타입
          //onCallbackReceived() ---> 호출
          onCallbackReceived('B');
        },
        child: Container(
          width: double.infinity,
          color: Colors.red,
          child: Center(child: Text('CHILD B')),
        ),
      ),
    );
  }
}
