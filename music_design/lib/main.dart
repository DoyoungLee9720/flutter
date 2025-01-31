import 'package:flutter/material.dart';
import 'package:music_design/common/utils/logger.dart';
import 'package:music_design/screens/main_screen.dart';
import 'package:music_design/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    print('---print 로 출력 ---');
    logger.d('---로거로 출력---');
    return MaterialApp(
      title: 'bugs',
      debugShowCheckedModeBanner: false,
      theme: mTheme(),
      home: MainScreen(),
    );
  }
}
