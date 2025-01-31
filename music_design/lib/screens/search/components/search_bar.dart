import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchBars extends StatelessWidget {
  const SearchBars({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: '검색어를 입력하세요.',
        prefixIcon: const Icon(CupertinoIcons.search, color: Colors.grey),
        filled: true,
        fillColor: Colors.grey.shade200,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24.0),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
