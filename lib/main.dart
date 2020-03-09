import 'package:flutter/material.dart';
import 'package:flutter_toutiao_app/chat/chat.dart';
import 'package:flutter_toutiao_app/home/home.dart';
import 'package:flutter_toutiao_app/login/login.dart';
import 'package:flutter_toutiao_app/module/request.dart';
import 'package:flutter_toutiao_app/redux/redux.dart';
import 'package:flutter_toutiao_app/welCome/swiperPage.dart';
import 'package:flutter_toutiao_app/welCome/welCome.dart';

import 'package:redux/redux.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  RequestModule.checkUserToken().then((val) {
    runApp(App(val));
  });
}

class App extends StatelessWidget {
  final String token;
  App(this.token);

  final store = new Store<AppState>(
    appReducer,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MOO 头条',
      // home: token != null ? LoginPage() : HomePage(),
      // home: HomePage(),
      // home: WelCome(token),
      home: SwiperPage(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/home': (context) => HomePage(),
        '/login': (context) => LoginPage(),
        '/chat': (context) => ChatPage(),
      },
    );
  }
}