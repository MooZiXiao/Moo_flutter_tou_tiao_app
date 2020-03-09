import 'package:flutter/material.dart';

class WelCome extends StatefulWidget {

  final String token;
  WelCome(this.token);

  @override
  _WelComeState createState() => _WelComeState();
}

class _WelComeState extends State<WelCome> {

  _delayedHome() {
    Future.delayed(Duration(seconds: 3), () {
      if(widget.token != null) {
        Navigator.pushNamed(context, '/home');
      } else {
        Navigator.pushNamed(context, '/login');
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _delayedHome();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        'images/LaunchImage.png',
        fit: BoxFit.cover
      )
    );
  }
}