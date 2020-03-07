import 'package:flutter/material.dart';
import 'package:flutter_toutiao_app/home/home.dart';
import 'package:flutter_toutiao_app/login/login.dart';
import 'package:flutter_toutiao_app/module/request.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  RequestModule.checkUserToken().then((val) {
    runApp(App(val));
  });
}

class App extends StatelessWidget {
  final String token;
  App(this.token);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MOO 头条',
      // home: token != null ? LoginPage() : HomePage(),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/home': (context) => HomePage(),
        '/login': (context) => LoginPage()
      },
    );
  }
}