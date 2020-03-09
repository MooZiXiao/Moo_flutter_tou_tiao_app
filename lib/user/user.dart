import 'package:flutter/material.dart';
import 'package:flutter_toutiao_app/user/UserList.dart';
import 'package:flutter_toutiao_app/user/userBtn.dart';
import 'package:flutter_toutiao_app/user/userInfo.dart';

class UserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          UserInfo(),
          UserBtn(),
          UserList()
        ],
      ),
    );
  }
}