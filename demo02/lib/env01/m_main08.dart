import 'dart:math';

//익명 함수
//코드의 시작점
void main() {
  // 응용 코드 만들어 보기 - 익명 함수
  //두수를 입력 받아 피타고라스 기법을 활용 하여 빗볏을 구하라

  var pytagorean = (double number1, double number2) {
    double n1 = number1 * number1;
    double n2 = number2 * number2;
    return sqrt(n1 + n2);
  };
  print('8제곱 + 5제곱 = ${pytagorean(8, 5)}');

  //최대 공약수 를 계산하기
  var GCD = (int num1, int num2) {
    List<int> n1 = [];
    List<int> n2 = [];
    for (int i = 2; i <= num1; i++) {
      if (num1 % i == 0) {
        n1.add(i);
      }
    }
    for (int i = 2; i <= num2; i++) {
      if (num2 % i == 0) {
        n2.add(i);
      }
    }
    // 두 리스트의 공통 요소 중 가장 큰 값 찾기
    List<int> commonFactors =
        n1.where((element) => n2.contains(element)).toList();
    return commonFactors.isNotEmpty
        ? commonFactors.reduce((a, b) => a > b ? a : b)
        : 1;
  };
  print('24와 18의 최대공약수는 ${GCD(24, 18)}');
} //end of main
