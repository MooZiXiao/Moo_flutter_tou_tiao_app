import 'package:flutter/material.dart';
import 'package:flutter_toutiao_app/module/request.dart';
import 'package:flutter_toutiao_app/searchBox/searchBox.dart';
import 'package:flutter_toutiao_app/tabBar/tabBar.dart';
import 'package:flutter_toutiao_app/tabBarContent/tabBarContent.dart';

class NewsPage extends StatefulWidget {
  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {

  List channels = [];

  // 获取 tab数据
  _getChannels () async {
    var data = await RequestModule.httpRequest('get', '/user/channels', null);
    // print(data.data['data']['channels']);
    setState(() {
      channels = data.data['data']['channels'];
    });
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getChannels();
  }

  @override
  Widget build(BuildContext context) {
    return channels.length == 0 ? SizedBox():DefaultTabController(
      length: channels.length,
      child: Scaffold(
        appBar: AppBar(
          title: SearchBox(),
          // centerTitle: true,
          elevation: 0.0,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(50.0),
            child: TabBarBtn(channels),
          ),
        ),
        body: TabBarView(
          children: channels.map((val) => 
            TabBarContent()
          ).toList()
        ),
      ),
    );
  }
}