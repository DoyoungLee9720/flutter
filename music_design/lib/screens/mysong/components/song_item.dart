import 'package:flutter/material.dart';
import 'package:music_design/models/songs.dart';
import 'song_detail.dart';

class SongItem extends StatelessWidget {
  final Songs songs;

  const SongItem({required this.songs, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      padding: EdgeInsets.only(left: 16.0),
      child: Row(
        children: [
          // 이미지
          ClipRRect(
            child: Image.asset(
              'assets/images/${songs.image}', // 경로 포함
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 16.0),
          // 상품 설명 - 위젯
          SongDetail(songs: songs)
        ],
      ),
    );
  }
}
