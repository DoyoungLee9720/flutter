import 'package:class_f_story/_core/utils/logger.dart';
import 'package:dio/dio.dart';

import '../../_core/utils/my_http.dart';

class UserRepository {
  // 회원 가입 요청
  Future<Map<String, dynamic>> createUser(Map<String, dynamic> reqData) async {
    //전역 변수안에 옵션값 설정되어 있는 객체를 들고 옴
    Response response = await dio.post('/join', data: reqData);
    //규칙 1 Repository 영역에서는 응답 HTTP 를 전체를 받아서
    //가능 한 뷰 모델에 Http Body 영역만 던져 주자.
    // response.header, response.data <-- body
    Map<String, dynamic> responseBody = response.data;
    logger.e(responseBody);
    return responseBody;
  }

  //사용자에 이름과 비밀번호 확인 요청
  //레코드 문법으로 변환
  Future<(Map<String, dynamic>, String)> readuser(
      Map<String, dynamic> reqData) async {
    Response response = await dio.post('/login', data: reqData);
    Map<String, dynamic> responseBody = response.data;
    // JWT
    String accesToken = '';
    // JWT 토큰 파싱
    try {
      logger.i('JWT 토큰 확인 : ${response.headers['Authorization']?[0]}');
      accesToken = response.headers['Authorization']![0];
    } catch (e) {
      //모든 예외를 잡을 수 있다.
      logger.e('JWT 파싱 오류');
    }
    //레코드 문법, 1. 위치 기반 레코드문법, 명명 기반 레코드 문법
    return (responseBody, accesToken);
  }
}
