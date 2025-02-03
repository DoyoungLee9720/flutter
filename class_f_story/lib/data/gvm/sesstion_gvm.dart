// 로그인 페이지, 회원가입 페이지 공통 뷰 모델

import 'package:class_f_story/data/model/session_user.dart';
import 'package:class_f_story/data/repository/user_repository.dart';
import 'package:class_f_story/main.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SessionGVM extends Notifier<SessionUser> {
  //뷰 모델 --> 화면에서 사용하는 상태(변수)
  //        --> 행위(비즈니스 로직) 가질 수 있다.
  // 뷰 모델에서 context 를 사용하기 위한 방안
  final mContext = navigatorkey.currentContext;
  final UserRepository userRepository = UserRepository();
  // 로그인 요청
  // 회원 가입 요청

  // 초기값 설정
  @override
  SessionUser build() {
    //state == SessionUser() 가 된다.
    return SessionUser(
      id: null,
      username: null,
      accessToken: null,
      isLogin: false,
    );
  }
}
