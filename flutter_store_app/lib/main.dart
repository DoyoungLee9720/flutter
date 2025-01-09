//플러터 동작시 반드시 있어야함
import 'package:flutter/material.dart';

//코드의 시작점
void main() {
  // 플러터는 거의 모든 것이 위젯
  // 전달된 위젯을 최상위 위젯으로 설정하고 앱을 시작하는 함수이다.
  runApp(MyApp());
} //end of main

//stl 단축키 활용
class MyApp extends StatelessWidget {
  // 생성자 - 매개변수 : 선택적 명명 매개변수
  MyApp({super.key});

  //부모클래스의 메서드를 재정의 하는 문법
  //build 함수는 화면에 그림을 그려 주는 함수이다.
  //BuildContext는 위젯 트리에서의 위치와 관련된 다양한 정보를 포함하고 있다.

  /*
    Flutter 을 개발을 할 때 맨 밑바닥부터 개발하는 것은 힘들다.
    기본적 개발을 할 수 있도록 매우 유용한 클래스를 제공한다.
    MateriallApp
  */
  @override
  Widget build(BuildContext context) {
    //const 상수를 만들어 주는 키워드 이다. <-- 컴파일 시점
    //생성자
    //home:(라벨)<-- 선택적 명명 매개변수로 설계 되어 있다.
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        //div 박스와 같은 녀석
        home: StorePage());
  }
} //end of MyApp

//
class StorePage extends StatelessWidget {
  StorePage({super.key});

  @override
  Widget build(BuildContext context) {
    //시각적 레이아웃 구조를 잡아주는 위젯이다.
    return Scaffold(
        body: SafeArea(
            child: Column(
      //위젯은 자식 또는 자식들을 속성을 가질수 있다.
      children: [
        //패딩 위젯이나 마진에 값을 EdgeInsets 클래스로 감싸서 넣는다.
        Padding(
          padding: EdgeInsets.all(25.0),
          //Row 위젯은 자식 위젯들을 수평 방향으로 정렬해 주는 위젯이다.
          child: Row(
            children: [
              Text(
                'Woman',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              //Spacer 위젯은 남은 공간을 차지하여 위젯 간격을 조절할 때 활용 가능
              Spacer(),
              Text(
                'Kids',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Text(
                'Shoes',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Text(
                'Bag',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        //Expanded 위젯 : 자식 위젯을 가용 공간에 맞게 확장시켜 배치하는 위젯이다.
        //자식2
        Expanded(
            child: Image.asset(
          'assets/bag.jpeg',
          fit: BoxFit.cover,
        )),
        //SizedBox 위젯은 고정된 크기의 빈 공간을 만들거나 자식 위젯의 크기를 제한할 때 사용한다.
        SizedBox(height: 2),
        Expanded(
            child: Image.asset(
          'assets/cloth.jpeg',
          fit: BoxFit.cover,
        )),
        //자식3
      ],
    )));
  }
} //end of StorePage
