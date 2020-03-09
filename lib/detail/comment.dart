import 'package:flutter/material.dart';

class Comment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 30.0,
                height: 30.0,
                margin: EdgeInsets.only(top: 5.0),
                child: CircleAvatar(
                  backgroundColor: Colors.blue,
                ),
              ),
              SizedBox(width: 10.0,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(0.0),
                          child: Text('MooZioo'),
                        ),
                        Row(
                          children: <Widget>[
                            Icon(Icons.thumb_up, size: 20.0,),
                            Text('22')
                          ],
                        ),
                      ],
                    ),
                    Text('MooZiooMooZiooMooZioo'),
                    Row(
                      children: <Widget>[
                        Text(
                          '2020-03-09'
                        ),
                        SizedBox(width: 10.0,),
                        Chip(
                          padding: EdgeInsets.all(0.0),
                          label: Text('11回复'),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Divider(),
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  height: 30.0,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black12
                    ),
                    borderRadius: BorderRadius.circular(30.0)
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: '写评论',
                      hintStyle: TextStyle(
                        fontSize: 14.0
                      ),
                      contentPadding: EdgeInsets.only(
                        left: 14.0,
                        bottom: 11.0
                      ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none
                    ),
                  ),
                ),
              ),
              IconButton(
                icon: Icon(Icons.share),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.favorite),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.chat),
                onPressed: () {},
              ),
            ],
          )
        ],
      )
    );
  }
}