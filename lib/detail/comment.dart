import 'package:flutter/material.dart';

class Comment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Row(
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
                )
              ],
            ),
          )
        ],
      )
    );
  }
}