//화살표 함수(람다 표현식)
void main() {
  int num1 = 500;
  int num2 = 10;
  print(add(num1, num2));
}

//재활용 하고 싶다면 --> 함수 --> 조금더 간결 --> 화살표 함수
int add(int n1, int n2) {
  return n1 + n2;
}

int add2(int n1, int n2) => n1 + n2;
int sub(int n1, int n2) => n1 - n2;
int mul(n1, n2) => n1 * n2;
int div(n1, n2) => n1 / n2;
