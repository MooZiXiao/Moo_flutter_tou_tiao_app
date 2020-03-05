import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_toutiao_app/module/request.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('登录'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Container(
        color: Colors.grey[100],
        child: LoginForm(),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  String _verifyStr = '获取验证码';
  int _seconds = 0;
  Timer _timer;

  String username = '';
  String vrCode = '';

  // 开启定时器，防止重复点击倒计时
  _getVRCode () async {
    if(_seconds == 0 && username != '') {
      // 倒计时
      _startTimer();
      RequestModule.httpRequest('get', '/xxxx').then((val) {
        print(val);
      });
    }
  }

  // 倒计时
  _startTimer () {
    _seconds = 60;
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if(_seconds <= 0) {
        _cancelTimer();
        return;
      }
      _seconds --;

      setState(() {
        if(_seconds <= 0) {
          _verifyStr = '重新获取';
        } else {
          _verifyStr = '$_seconds s';
        }
      });
    });
  }
  // 取消定时器
  _cancelTimer () {
    _timer.cancel();
  }

  // 登录
  _login () {

  }

  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
          Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: 
              TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.mobile_screen_share, color: Colors.grey,),
                  hintText: '请输入手机号',
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black12
                    )
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black12
                    )
                  ),
                ),
                onChanged: (val) {
                  setState(() {
                    username = val;
                  });
                },
                onSubmitted: (val) {

                },
              ),
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: 
              Row(
                children: <Widget>[
                  Expanded(
                    child: 
                      TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock, color: Colors.grey,),
                          hintText: '请输入验证码',
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide.none
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide.none
                          )
                        ),
                        onChanged: (val) {
                          setState(() {
                            vrCode = val;
                          });
                        },
                        onSubmitted: (val) {

                        },
                      )
                    ,
                  ),
                  GestureDetector(
                    onTap: () {
                      _getVRCode();
                    },
                    child: Container(
                      width: 108.0,
                      height: 30.0,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(237, 237, 237, 1),
                        borderRadius: BorderRadius.circular(120.0)
                      ),
                      child: Text(_verifyStr),
                    ),
                  )
                ],
              ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: RaisedButton(
              color: Colors.blue,
              disabledColor: Colors.blue[200],
              elevation: 0.0,
              child: Text('登录', style: TextStyle(color: Colors.white),),
              onPressed: username == '' || vrCode == '' ? null : () {
                _login();
              },
            ),
          ),
          
        ],
      );
  }
}