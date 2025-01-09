// 일단 그냥 할뿐 ~
void main() {
  int n1 = 10;
  print('n1 ${n1.runtimeType}');
  //n1 = 10.1; 불가능
  var v1 = 10;
  print('v1 ${v1.runtimeType}');
  //v1 = 10.1; 불가능
  dynamic d1 = 10;
  print('d1 ${d1.runtimeType}');
  d1 = 10.1; //가능
  print('d1 ${d1.runtimeType}');
}
