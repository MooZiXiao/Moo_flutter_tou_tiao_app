import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8.0),
        margin: EdgeInsets.symmetric(horizontal: 25.0),
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, .2),
          borderRadius: BorderRadius.circular(18.0)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.search),
            Text(
              '搜索',
              style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.normal
              ),
            )
          ],
        )
      )
    );
  }
}