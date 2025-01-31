import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_design/components/appbar_preferred_size.dart';
import 'package:music_design/screens/search/components/search_bar.dart';
import 'package:music_design/screens/search/components/search_menu.dart';
import 'package:music_design/screens/search/components/search_taglist.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.music_mic, color: Colors.grey),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.ellipsis_vertical,
                color: Colors.grey),
          )
        ],
        bottom: appBarBottomLine(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchBars(),
            const SizedBox(height: 24.0),
            MenuList(),
            const SizedBox(height: 24.0),
            TagList(tags: [
              '최근',
              '#봄',
              '#벅스+제나두',
              '#벅스+쇼파르',
              '#해외',
              '#차트 속 음악',
              '#essential',
            ]),
          ],
        ),
      ),
    );
  }
}
