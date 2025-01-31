import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_design/models/songs.dart';
import 'package:music_design/theme.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SongDetail extends StatelessWidget {
  final Songs songs;

  const SongDetail({required this.songs, super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                songs.title,
                style: textTheme().bodyLarge,
              ),
              const SizedBox(height: 8.0), // title과 singer 간격
              Text(
                '${songs.singer}',
              ),
            ],
          ),
          Positioned(
            right: 16.0, // 오른쪽 여백 추가
            top: 0, // 아이콘의 세로 중앙 정렬
            bottom: 0,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  CupertinoIcons.play,
                  size: 24, // 버튼 크기 조정
                  color: Colors.grey,
                ),
                const SizedBox(width: 16.0),
                Icon(
                  CupertinoIcons.ellipsis_vertical,
                  size: 24, // 버튼 크기 조정
                  color: Colors.grey,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
