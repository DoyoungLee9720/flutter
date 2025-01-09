void main() {
  print('원의 반지름 5의 면적 : ${circle(5)}');
  print("직사각형 가로 3 세로 4의 면적은 : ${rectangle(3.6, 4)}");
}

double circle(double n1) => n1 * n1 * 3.14;
rectangle(n1, n2) => n1 * n2;
