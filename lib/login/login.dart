import 'package:flutter/material.dart';

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

                        },
                        onSubmitted: (val) {

                        },
                      )
                    ,
                  ),
                  Container(
                    width: 108.0,
                    height: 30.0,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(237, 237, 237, 1),
                      borderRadius: BorderRadius.circular(120.0)
                    ),
                    child: Text('获取验证码'),
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
              onPressed: () {
                
              },
            ),
          ),
          
        ],
      );
  }
}