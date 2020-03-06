import 'package:flutter/material.dart';

class TabBarContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12.0),
      child: ListView(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '一二三四五六七八九十',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.black
                ),
              ),
              SizedBox(
                height: 3.0,
              ),
              RichText(
                text: TextSpan(
                  text: '置顶  ',
                  style: TextStyle(
                    color: Colors.red
                  ),
                  children: [
                    TextSpan(
                      text: '作者  ',
                      style: TextStyle(
                        color: Colors.grey
                      ),
                    ),
                    TextSpan(
                      text: '评论88  ',
                      style: TextStyle(
                        color: Colors.grey
                      ),
                    ),
                    TextSpan(
                      text: '1小时前',
                      style: TextStyle(
                        color: Colors.grey
                      ),
                    ),
                  ]
                ),
              )
            ],
          ),
          Divider(height: 22.0,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '一二三四五六七八九十',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.black
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: AspectRatio(
                      aspectRatio: 1/1,
                      child: Image.network(
                        'https://n.sinaimg.cn/blog/267/w180h87/20200306/dc4a-iqmtvwv2642890.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    child: AspectRatio(
                      aspectRatio: 1/1,
                      child: Image.network(
                        'https://n.sinaimg.cn/blog/267/w180h87/20200306/772d-iqmtvwv2621956.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    child: AspectRatio(
                      aspectRatio: 1/1,
                      child: Image.network(
                        'https://n.sinaimg.cn/blog/267/w180h87/20200306/52cc-iqmtvwv2633953.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5.0,
              ),
              RichText(
                text: TextSpan(
                  text: '置顶  ',
                  style: TextStyle(
                    color: Colors.red
                  ),
                  children: [
                    TextSpan(
                      text: '作者  ',
                      style: TextStyle(
                        color: Colors.grey
                      ),
                    ),
                    TextSpan(
                      text: '评论88  ',
                      style: TextStyle(
                        color: Colors.grey
                      ),
                    ),
                    TextSpan(
                      text: '1小时前',
                      style: TextStyle(
                        color: Colors.grey
                      ),
                    ),
                  ]
                ),
              )
            ],
          ),
          Divider(height: 22.0,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Text(
                      '一二三四五六七八九十十九八七六五四三二一',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 110.0,
                    height: 100.0,
                    child: Image.network(
                      'https://n.sinaimg.cn/blog/267/w180h87/20200306/52cc-iqmtvwv2633953.jpg',
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 5.0,
              ),
              RichText(
                text: TextSpan(
                  text: '置顶  ',
                  style: TextStyle(
                    color: Colors.red
                  ),
                  children: [
                    TextSpan(
                      text: '作者  ',
                      style: TextStyle(
                        color: Colors.grey
                      ),
                    ),
                    TextSpan(
                      text: '评论88  ',
                      style: TextStyle(
                        color: Colors.grey
                      ),
                    ),
                    TextSpan(
                      text: '1小时前',
                      style: TextStyle(
                        color: Colors.grey
                      ),
                    ),
                  ]
                ),
              )
            ],
          )
        ],
      )
    );
  }
}