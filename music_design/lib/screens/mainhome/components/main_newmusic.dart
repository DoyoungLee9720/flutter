import 'package:flutter/material.dart';

class NewSongs extends StatelessWidget {
  const NewSongs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            const SizedBox(width: 16.0),
            _buildSongCard(
              imagePath: 'assets/images/CheerleaderJPCooper.jpg',
              title: 'Cheerleader',
              singer: 'JPCooper',
            ),
            const SizedBox(width: 16.0),
            _buildSongCard(
              imagePath: 'assets/images/LINDA린다G.jpg',
              title: 'LINDA',
              singer: '린다G',
            ),
            const SizedBox(width: 16.0),
            _buildSongCard(
              imagePath: 'assets/images/TeaTime미노이.jpg',
              title: 'Tea Time',
              singer: '미노이',
            ),
            const SizedBox(width: 16.0),
            _buildSongCard(
              imagePath: 'assets/images/내이름맑음QWER.jpg',
              title: '내 이름 맑음',
              singer: 'QWER',
            ),
            const SizedBox(width: 16.0),
            _buildSongCard(
              imagePath: 'assets/images/다이나믹듀오고백.jpg',
              title: '고백',
              singer: '다이나믹듀오',
            ),
            const SizedBox(width: 16.0),
          ],
        ),
      ),
    );
  }

  // Song Card Builder
  Widget _buildSongCard({
    required String imagePath,
    required String title,
    required String singer,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          child: Image.asset(
            imagePath,
            width: 150,
            height: 150,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 8.0), // 이미지와 텍스트 사이 간격
        Text(
          title,
          style: const TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          singer,
          style: const TextStyle(
            fontSize: 12.0,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
