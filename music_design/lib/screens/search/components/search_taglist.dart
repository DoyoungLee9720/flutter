import 'package:flutter/material.dart';

class TagList extends StatelessWidget {
  final List<String> tags;

  const TagList({required this.tags, super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0,
      runSpacing: 8.0,
      children: tags.asMap().entries.map((entry) {
        final index = entry.key;
        final tag = entry.value;
        return _buildTag(tag, index == 0); // 첫 번째 태그만 특별한 스타일 적용
      }).toList(),
    );
  }

  Widget _buildTag(String label, bool isFirstTag) {
    if (isFirstTag) {
      // 첫 번째 태그에만 테두리 없는 스타일
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 13.0),
        child: Text(
          label,
          style: const TextStyle(color: Colors.black),
        ),
      );
    }

    // 기본 태그 스타일
    return Chip(
      label: Text(label),
      labelStyle: const TextStyle(color: Colors.black),
      padding: const EdgeInsets.symmetric(horizontal: 3.0, vertical: 8.0),
    );
  }
}
