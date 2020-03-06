import 'package:flutter/material.dart';

class TabBarBtn extends StatelessWidget {

  final List channels;

  TabBarBtn(this.channels);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: TabBar(
        labelColor: Colors.black,
        unselectedLabelColor: Colors.black45,
        labelStyle: TextStyle(
          fontSize: 14.0
        ),
        indicatorWeight: 3.0,
        indicatorColor: Colors.blueAccent,
        indicatorSize: TabBarIndicatorSize.label,
        isScrollable: true,
        labelPadding: EdgeInsets.symmetric(horizontal: 20.0),
        tabs: channels.map((val) => 
            Tab(text: val['name'],)
          ).toList()
      )
    );
  }
}