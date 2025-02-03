import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

// API 서버의 기본 URL 설정
// 집 기본 API 주소
// 그린 로컬 컴퓨터 기본 API 주소
//전역 변수 사용
final baseUrl = 'http://192.168.0.146:8080';

//전역 변수 dio <--
final dio = Dio(
  BaseOptions(
    baseUrl: baseUrl,
    contentType: 'application/json;charset=utf-8',
    //주의 ! 200 번 이외에는  모두 에러로 간주 하게 기본값 설정되어 있음
    //다른 상태코드 다 허용
    validateStatus: (status) => true,
  ),
);

// 중요 데이터 보관소(금고)
// 로컬에 민감한 데이터를 보관하는 안전한 금고 역할을 한다.
const secureStorage = FlutterSecureStorage();
