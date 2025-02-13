// 모델링 -> 현실세계에 존재하는 데이터를 구조화 시킨다.
// 즉, 우리 플러터 내부에서 사용하는 데이터를 모델이라 부르자.
// 게실글의  주인이 누구인가 --> 모델링 -> user
// 인증 여부 --> SessionUser 로 진행할 예정
class User {
  int? id;
  String? username;
  String? imgUrl;
  User({
    required this.id,
    required this.username,
    required this.imgUrl,
  });
}
