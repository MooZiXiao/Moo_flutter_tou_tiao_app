import 'package:flutter/material.dart';
import 'package:flutter_toutiao_app/news/news.dart';
import 'package:flutter_toutiao_app/question/question.dart';
import 'package:flutter_toutiao_app/user/user.dart';
import 'package:flutter_toutiao_app/video/video.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;
  List _body = [
    NewsPage(),
    QuestionPage(),
    VideoPage(),
    UserPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('首页'),
      //   centerTitle: true,
      //   elevation: 0.0,
      // ),
      body: _body[_index],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('首页')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.question_answer),
            title: Text('问答')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_label),
            title: Text('视频')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('我的')
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _index,
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
      ),
    );
  }
}