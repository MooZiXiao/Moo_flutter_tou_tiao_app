import 'package:flutter/material.dart';

class ReportSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          left: BorderSide(
            width: 5.0,
            color: Color.fromRGBO(115, 115, 115, 1)
          ),
          right: BorderSide(
            width: 5.0,
            color: Color.fromRGBO(115, 115, 115, 1)
          ),
        )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text('举报文章'),
          ),
          Divider(),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text('举报文章'),
          ),
          Divider(),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text('举报文章'),
          ),
          Divider(),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text('举报文章'),
          ),
          Divider(),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text('举报文章'),
          ),
          Divider(),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text('举报文章'),
          ),
          Container(
            width: double.infinity,
            height: 10.0,
            decoration: BoxDecoration(
              color: Color.fromRGBO(114, 114, 114, 0.6),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('取消'),
            ),
          )
        ],
      ),
    );
  }
}