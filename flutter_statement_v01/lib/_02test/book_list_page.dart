import 'package:flutter/material.dart';
import '../common.utils/logger.dart';

class BookListPage extends StatelessWidget {
  final Function(String) onToggleSaved;
  final List<String> selectedBook;

  BookListPage(
      {required this.onToggleSaved, required this.selectedBook, super.key});
  final List<String> books = ['호모사피엔스', '다트입문', '홍길동전', '코드리팩토링', '전치사도감'];

  @override
  Widget build(BuildContext context) {
    logger.d('데이터 확인 : ${selectedBook.toString()}');
    return ListView();
  }
}
