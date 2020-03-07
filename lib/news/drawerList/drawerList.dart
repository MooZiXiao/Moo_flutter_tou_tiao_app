import 'package:flutter/material.dart';
import 'package:flutter_toutiao_app/module/request.dart';
import 'package:flutter_toutiao_app/news/moduel/article.dart';

class DrawerList extends StatefulWidget {

  // 子组件调用父组件方法
  // 接收
  final VoidCallback refresh;
  DrawerList(this.refresh);

  @override
  _DrawerListState createState() => _DrawerListState();
}

class _DrawerListState extends State<DrawerList> {

  List userChannels = [];
  List allChannels = [];
  bool isEdit = false;

  _getUserChannels () async {
    var data = await RequestModule.httpRequest('get', '/user/channels', null);
    // print(data);
    setState(() {
      userChannels = data.data['data']['channels'];
    });
  }

  _getAllChannels () async {
    var data = await RequestModule.httpRequest('get', '/channels', null);
    // print(data);
    setState(() {
      allChannels = data.data['data']['channels'];
    });
  }

  _getUserInfo () async {
    // var data = await RequestModule.httpRequest('get', '/user', null);
    // print(data);
  }

  _saveUserChannel () async {
    // print(userChannels);
    List params = userChannels.asMap().keys.map((index) {
      return {
        'id': userChannels[index]['id'],
        'seq': index + 2
      };
    }).toList();
    List channels = params.skip(2).toList();
    print(channels);
    // var data = await RequestModule.httpRequest('put', '/user/channels', {'channels': channels});
    // print(data);
    // setState(() {
    //   userChannels = data.data['data']['channels'];
    // });
  }

  @override
  void initState() {
    super.initState();
    _getAllChannels();
    _getUserChannels();
    _getUserInfo();
  }

  @override
  void dispose() {
    super.dispose();
    widget.refresh();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(0.0),
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue
            ),
            child: Center(
              child: SizedBox(
                width: 66.0,
                height: 66.0,
                child: CircleAvatar(
                  child: Text('小李'),
                ),
              ),
            )
          ),
          ListTile(
            title: Text(
              '我的频道',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.normal
              ),
            ),
            trailing: Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.redAccent),
                borderRadius: BorderRadius.circular(10.0)
              ),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    isEdit = !isEdit;
                  });
                },
                child: Text(
                  isEdit ? '完成' : '编辑',
                  style: TextStyle(
                    color: Colors.redAccent
                  ),
                )
              )
            ),
          ),
          // 横向瀑布流
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Wrap(
              spacing: 15.0,
              children: userChannels.map((val) => Chip(
                label: Text(val['name']),
                onDeleted: isEdit ? () {
                  setState(() {
                    userChannels.remove(val);
                  });
                  _saveUserChannel();
                } : null,
              )).toList(),
          )
          ),
          ListTile(
            title: Text(
              '频道推荐',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.normal
              ),
            )
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Wrap(
              spacing: 15.0,
              children: allChannels.map((val) => FilterChip(
                label: Text(val['name']),
                avatar: CircleAvatar(
                  backgroundColor: Colors.grey[400],
                  child: Text(
                    '+',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0
                    ),
                  ),
                ),
                onSelected: (status) {
                  setState(() {
                    allChannels.remove(val);
                    userChannels.add(val);
                  });
                  _saveUserChannel();
                },
              )).toList(),
            )
          ),
        ],
      ),
    );
  }
}