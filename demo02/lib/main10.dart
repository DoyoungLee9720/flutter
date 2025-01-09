void main() {
  /*
    클래스란?
    클래스는 객체(인스턴스)를 정의하는 설계도 입니다.

    객체란?(Object)
    클래스를(설계도) 통해서 프로그램 에서 실제로 생성되는 인스턴스를 말한다.
    객체는 보통 속성(상태) 행위를 가질 수 있다.

    객체 지향 프로그래밍(OOP)이란
    객체와 객체간에 관계를 형성하고, 그 상호작용을 통해
    애플리케이션을 설계, 구현하는 프로그래밍 패러다임 중  하나 입니다.
  */
  //Dog d1 = new Dog(); //인스턴스화 되었다.
  Dog d1 = Dog(); //인스턴스화 되었다. new 키워드를 대부분  생략한다.
  print('강아지 이름 ${d1.name}');
  print('강아지 나이 ${d1.age}');
  print('강아지 색 ${d1.color}');
  print('강아지 목마름 ${d1.thirsty}');

  //d1.thirsty = 50;
  d1.drinkWater();
  d1.drinkWater();
  d1.drinkWater();
  d1.drinkWater();
  d1.drinkWater();
  print('강아지 목마름 ${d1.thirsty}');
}

// 자바 ---> . 하나의 자바 파일에 public class 를 두개 선언할수 있나요?
class Dog {
  // 변수에 선언과 동시에 초기화(값을 넣다)
  String name = '토토';
  int age = 5;
  String color = '블랙';
  int thirsty = 100;

  //2. 물을 마실때 마다 목마름 10을 줄인다
  void drinkWater() {
    thirsty -= 10;
    print('${name}는 물을 마셨다');
  }
}

class Water {
  double liter = 2.0; // 물 2리터
  void drink() {
    liter -= 0.1;
  }
}
