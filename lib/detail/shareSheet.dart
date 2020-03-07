import 'package:flutter/material.dart';
import 'package:flutter_toutiao_app/detail/reportSheet.dart';

class ShareSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.0,
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
        ),
        // borderRadius: BorderRadius.circular(15.0)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Column(
                  children: <Widget>[
                    Icon(Icons.settings, size: 40.0,),
                    Text('微信'),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: <Widget>[
                    Icon(Icons.settings, size: 40.0,),
                    Text('朋友圈'),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: <Widget>[
                    Icon(Icons.settings, size: 40.0,),
                    Text('微博'),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: <Widget>[
                    Icon(Icons.settings, size: 40.0,),
                    Text('QQ'),
                  ],
                ),
              ),
            ],
          ),
          Divider(),
          Row(
            children: <Widget>[
              Expanded(
                child: Column(
                  children: <Widget>[
                    Icon(Icons.settings, size: 40.0,),
                    Text('显示设置'),
                  ],
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    // 先关上一个，再打开这个
                    Navigator.pop(context);
                    // 弹出底部
                    showModalBottomSheet(
                      context: context, 
                      builder: (BuildContext context) {
                        return ReportSheet();
                      }
                    );
                  },
                  child: Column(
                    children: <Widget>[
                      Icon(Icons.error, size: 40.0,),
                      Text('举报'),
                    ],
                  ),
                )
              ),
              Expanded(
                child: Column(
                  children: <Widget>[
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: <Widget>[
                  ],
                ),
              ),
            ],
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
            child: Center(
              child: Text('取消'),
            ),
          )
        ],
      ),
      
    );
  }
}