import 'package:flutter/material.dart';

class UserBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.0),
        child: Row(
        children: <Widget>[
          Expanded(
            child: PubBtn(Icons.star_border, '收藏'),
          ),
          Expanded(
            child: PubBtn(Icons.access_time, '历史'),
          ),
          Expanded(
            child: PubBtn(Icons.loyalty, '作品'),
          ),
        ],
      )
    );
  }
}

class PubBtn extends StatelessWidget {

  final IconData icon;
  final String text;

  PubBtn(this.icon, this.text);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          
        },
        child: Column(
          children: <Widget>[
            Icon(icon, size: 30.0,),
            SizedBox(height: 5.0,),
            Text(
              text,
              style: TextStyle(
                fontSize: 16.0
              ),
            )
          ],
        ),
      )
    );
  }
}