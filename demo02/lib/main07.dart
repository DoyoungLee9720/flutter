//논리 연산자
void main() {
  bool isRainy = true;
  bool hasUmbrella = false;

  //and
  // T && T ---> true
  print(isRainy && hasUmbrella);
  print(hasUmbrella && isRainy);

  //OR
  print(isRainy || hasUmbrella);
  print(hasUmbrella || isRainy);

  // NOT
  print(!isRainy);
  print(!hasUmbrella);
  print(isRainy && hasUmbrella || isRainy);
  /*
    1 : 1
    2 : 1
    3 : %
    4 : double
    5 : Hello Dart
    6 : 13
    7 :
      true
      false
      true
      false
    8 : true
    9 : 4
    10 : final
  */
}
