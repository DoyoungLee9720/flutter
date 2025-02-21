import 'package:flutter/material.dart';
import 'package:flutter_statement_v01/_02/book_cart_page.dart';
import 'package:flutter_statement_v01/_02/book_list_page.dart';
import '../common.utils/logger.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //로컬 상태 : 하단에 활성화 된 탭 인덱스 번호
  int pageIndex = 0;
  // 공유 상태 카드에 담김 북 정보
  // (책 리스트 화면, 장바구니 화면에서 공유하는 데이터)
  // 상품 --> 책 (String) 데이터 타입으로 관리하자.
  List<String> mySelectedBook = [];

  //상태를 변경하는 메서드 만들기
  void _toggleSaveStates(String book) {
    //다시 화면을 그려라 요청 함수
    setState(() {
      if (mySelectedBook.contains(book)) {
        mySelectedBook.remove(book);
      } else {
        mySelectedBook.add(book);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    logger.d('HomeScreen build 메서드 호출됨 ');

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('텐코에 서재'),
          backgroundColor: Theme.of(context).colorScheme.tertiaryContainer,
        ),
        body: IndexedStack(
          //반드시 추가해야 되는 속성
          index: pageIndex,
          children: [
            BookListPage(
              // _toggleSaveStates, _toggleSaveStatues() 차이점은?
              onToggleSaved: _toggleSaveStates,
              selectedBook: mySelectedBook,
            ),
            BookCartPage(
              mySelectedBooks: mySelectedBook,
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          //필수 속성
          currentIndex: pageIndex,
          onTap: (index) {
            //행위 .. 생략 ..
            setState(() {
              pageIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: 'book-list',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'cart',
            ),
          ],
        ),
      ),
    );
  }
}
