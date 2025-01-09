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
      home: Scaffold(
        body: GridView.builder(
          // 방향을 지정한다
          scrollDirection: Axis.vertical,
          // 그리드의 열 개수를 고정하는 속성
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 16.0,
            mainAxisSpacing: 16.0,
          ),
          itemCount: 20,
          itemBuilder: (context, index) {
            return Container(
              color: Colors.blue,
            );
          },
        ),
      ),
    );
  }
}
