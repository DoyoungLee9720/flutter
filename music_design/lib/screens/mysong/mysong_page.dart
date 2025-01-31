import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_design/models/songs.dart';
import 'package:music_design/screens/mysong/components/song_item.dart';

class MysongPage extends StatelessWidget {
  const MysongPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // 탭의 개수: 곡, 앨범, 아티스트
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          forceMaterialTransparency: true,
          title: Row(
            children: [
              Text(
                '전체선택',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Center(
                child: Text(
                  '전체듣기',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
          bottom: TabBar(
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.black,
            tabs: const [
              Tab(text: '곡'),
              Tab(text: '앨범'),
              Tab(text: '아티스트'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // 곡 탭: SongItem 리스트
            ListView.separated(
              itemBuilder: (context, index) => SongItem(songs: songList[index]),
              separatorBuilder: (context, index) => Divider(
                height: 0,
                indent: 16.0,
                endIndent: 16.0,
                color: Colors.grey,
              ),
              itemCount: songList.length,
            ),
            // 앨범 탭
            Center(
              child: Text(
                '앨범 리스트가 여기에 표시됩니다.',
                style: TextStyle(fontSize: 16.0, color: Colors.grey),
              ),
            ),
            // 아티스트 탭
            Center(
              child: Text(
                '아티스트 리스트가 여기에 표시됩니다.',
                style: TextStyle(fontSize: 16.0, color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
