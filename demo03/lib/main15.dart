// 코드의 진입점
void main() {
  Dog d1 = Dog();
  Water w1 = Water();
  Water w2 = Water();
  d1.drinkWater(w2);
  print(w2.liter);
} // end of main

// 자바 ---> .하나의 자바 파일에 public class 를 두개 선언할 수 있나요?

class Dog {
  // 변수에 선언과 동시에 초기화(값을 넣다)
  String name = '토토';
  int age = 5;
  String color = '블랙';
  int thirsty = 100;

  // 2. 물을 마실 때 마다 갈증 지수가 10씩 내려간다.
  void drinkWater(Water water) {
    thirsty = thirsty - 10;
    water.drink();
  }
}

class Water {
  double liter = 2.0; // 물 2리터

  void drink() {
    // liter = liter - 0.1;
    liter -= 0.1;
  }
}
