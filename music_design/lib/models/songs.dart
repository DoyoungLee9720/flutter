class Songs {
  String title; //제목
  String singer; //가수
  String image; //이미지

  Songs({
    required this.title,
    required this.singer,
    required this.image,
  });
}

// 샘플 데이터
List<Songs> songList = [
  Songs(
    title: 'Cheerleader',
    singer: 'JPCooper',
    image: 'CheerleaderJPCooper.jpg',
  ),
  Songs(
    title: 'LINDA',
    singer: '린다G',
    image: 'LINDA린다G.jpg',
  ),
  Songs(
    title: 'Tea Time',
    singer: '미노이',
    image: 'TeaTime미노이.jpg',
  ),
  Songs(
    title: '내 이름 맑음',
    singer: 'QWER',
    image: '내이름맑음QWER.jpg',
  ),
  Songs(
    title: '고백',
    singer: '다이나믹듀오',
    image: '다이나믹듀오고백.jpg',
  ),
  Songs(
    title: '에필로그',
    singer: '아이유',
    image: '에필로그아이유.jpg',
  ),
  Songs(
    title: '오늘도 빛나는 너에게',
    singer: '마크툽',
    image: '오늘도빛나는너에게마크툽.jpg',
  ),
  Songs(
    title: '짧은머리',
    singer: '허각,정은지',
    image: '짧은머리허각정은지.jpg',
  ),
  Songs(
    title: '취기를빌려',
    singer: '산들',
    image: '취기를빌려산들.jpg',
  ),
  Songs(
    title: '폼나게',
    singer: '체리블렛',
    image: '폼나게체리블렛.jpg',
  ),
];
