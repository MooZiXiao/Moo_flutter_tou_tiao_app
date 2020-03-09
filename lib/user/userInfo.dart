import 'package:flutter/material.dart';

class UserInfo extends StatefulWidget {
  @override
  _UserInfoState createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 80.0,
        bottom: 20.0
      ),
      color: Colors.blue,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  SizedBox(width: 10.0,),
                  SizedBox(
                    width: 60.0,
                    height: 60.0,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage('https://n.sinaimg.cn/blog/267/w180h87/20200306/dc4a-iqmtvwv2642890.jpg'),
                    ),
                  ),
                  SizedBox(width: 15.0,),
                  Column(
                    children: <Widget>[
                      Text(
                        'MooZioo',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w400
                        ),
                      ),
                      SizedBox(height: 5.0,),
                      GestureDetector(
                        onTap: () {

                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15.0)
                          ),
                          child: Text(
                            '申请认证',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 12.0
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(0, 0, 0, .3),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    bottomLeft: Radius.circular(15.0)
                  )
                ),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.book, color: Colors.white),
                    SizedBox(width: 5.0,),
                    Column(
                      children: <Widget>[
                        Text(
                          '今日阅读',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.0
                          ),
                        ),
                        Text(
                          '5分钟',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.0
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 20.0,),
          Row(
            children: <Widget>[
              Expanded(
                child: Column(
                  children: <Widget>[
                    Text(
                      '9',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white
                      ),
                    ),
                    Text(
                      '动态',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: <Widget>[
                    Text(
                      '9',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white
                      ),
                    ),
                    Text(
                      '关注',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: <Widget>[
                    Text(
                      '9',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white
                      ),
                    ),
                    Text(
                      '粉丝',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}