import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_toutiao_app/detail/shareSheet.dart';
import 'package:flutter_toutiao_app/module/request.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';

class DetailPage extends StatefulWidget {
  final int id;
  DetailPage(this.id);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {

  var detail;
  List recomments;
  bool _isFollow;

  _getDetail () async {
    // print(widget.id);
    var data = await RequestModule.httpRequest('get', '/articles/${widget.id}', null);
    print(data.data['data']);
    setState(() {
      detail = data.data['data'];
      recomments = detail['recomments'];
      _isFollow = detail['is_followed'];
    });
  }

  _followed () {
    print(_isFollow);
    // var data = await RequestModule.httpRequest('get', '/articles/${widget.id}', null);
    setState(() {
      _isFollow = !_isFollow;
    });
  }

  @override
  void initState() {
    super.initState();
    _getDetail();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: detail == null ? Center(
        child: CircularProgressIndicator(),
      ) : CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text(detail['title']),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.more_horiz),
                onPressed: () {
                  // 弹出底部
                  showModalBottomSheet(
                    context: context, 
                    builder: (BuildContext context) {
                      return ShareSheet();
                    }
                  );
                },
              )
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  detail['title'],
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.w600
                  ),
                ),
              )
            ]),
          ),
          // 作者
          MediaQuery.removePadding(
            context: context, 
            removeBottom: true,
            child: SliverPersistentHeader(
              pinned: true,
              delegate: _SliverAppBarDelegate(
                childBar: AppBar(
                  brightness: Brightness.light,
                  elevation: 0.0,
                  title: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            SizedBox(
                              width: 35.0,
                              height: 35.0,
                              child: GestureDetector(
                                onTap: () {

                                },
                                child: CircleAvatar(
                                  backgroundImage: NetworkImage(detail['aut_photo']),
                                ),
                              ),
                            ),
                            SizedBox(width: 10.0,),
                            Text(
                              detail['aut_name'],
                              style: TextStyle(
                                color: Colors.black
                              ),
                            ),
                          ],
                        ),
                        RaisedButton.icon(
                          onPressed: () {
                            _followed();
                          },
                          icon: _isFollow == false ? Icon(Icons.add, color: Colors.white,) : Icon(Icons.timelapse, color: Colors.white,),
                          label: Text(
                            _isFollow == false ? '关注' : '已关注',
                            style: TextStyle(
                              color: Colors.white
                            ),
                          ),
                          color: Colors.blue,
                        )
                      ],
                    ),
                  ),
                  actions: <Widget>[
                    IconButton(
                      icon: Icon(Icons.more_horiz, color: Colors.grey,),
                      onPressed: () {
                        // 弹出底部
                        showModalBottomSheet(
                          context: context, 
                          builder: (BuildContext context) {
                            return ShareSheet();
                          }
                        );
                      },
                    )
                  ],
                  backgroundColor: Color.fromRGBO(247, 247, 247, 1),
                  leading: IconButton(
                    icon: Icon(Icons.arrow_back_ios, color: Colors.grey,),
                    onPressed: () {
                      
                    },
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 45.0,
                            height: 45.0,
                            child: GestureDetector(
                              onTap: () {

                              },
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(detail['aut_photo']),
                              ),
                            ),
                          ),
                          SizedBox(width: 10.0,),
                          Column(
                            children: <Widget>[
                              Text(
                                detail['aut_name'],
                                style: TextStyle(
                                  color: Colors.black
                                ),
                              ),
                              Text(
                                timeago.format(DateTime.parse(detail['pubdate'])),
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14.0
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      RaisedButton.icon(
                        onPressed: () {
                          _followed();
                        },
                        icon: _isFollow == false ? Icon(Icons.add, color: Colors.white,) : Icon(Icons.timelapse, color: Colors.white,),
                        label: Text(
                          _isFollow == false ? '关注' : '已关注',
                          style: TextStyle(
                            color: Colors.white
                          ),
                        ),
                        color: Colors.blue,
                      )
                    ],
                  ),
                )
              ),
            ),
          ),
          // 内容
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: EdgeInsets.all(10.0),
                child: HtmlWidget(
                  detail['content'],
                  textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 17.0,
                  ),
                )
              ),
              // 猜你喜欢
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 17.0, vertical: 5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '猜你喜欢',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    Wrap(
                      children: recomments.map((val) {
                        return GestureDetector(
                          onTap: () {

                          },
                          child: Container(
                            margin: EdgeInsets.only(top: 10.0),
                            width: MediaQuery.of(context).size.width / 2 - 20,
                            child: Text(
                              val['title'],
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          )
                        );
                      }).toList(),
                  //     <Widget>[
                  //       Container(
                  //         margin: EdgeInsets.only(top: 10.0),
                  //         width: MediaQuery.of(context).size.width / 2 - 20,
                  //         child: Text(
                  //           '主要负责同志向中央向中央',
                  //           maxLines: 1,
                  //           overflow: TextOverflow.ellipsis,
                  //         ),
                  //       ),
                        
                  //       Container(
                  //         margin: EdgeInsets.only(top: 10.0),
                  //         width: MediaQuery.of(context).size.width / 2 - 20,
                  //         child: Text(
                  //           '主要负责同志向中央向中央',
                  //           maxLines: 1,
                  //           overflow: TextOverflow.ellipsis,
                  //         ),
                  //       ),
                        
                  //       Container(
                  //         margin: EdgeInsets.only(top: 10.0),
                  //         width: MediaQuery.of(context).size.width / 2 - 20,
                  //         child: Text(
                  //           '主要负责同志向中央向中央',
                  //           maxLines: 1,
                  //           overflow: TextOverflow.ellipsis,
                  //         ),
                  //       ),
                  //       Container(
                  //         margin: EdgeInsets.only(top: 10.0),
                  //         width: MediaQuery.of(context).size.width / 2 - 20,
                  //         child: Text(
                  //           '主要负责同志向中央向中央',
                  //           maxLines: 1,
                  //           overflow: TextOverflow.ellipsis,
                  //         ),
                  //       ),
                  //     ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 20.0,),
              // 按钮
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {

                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 22.0, vertical: 5.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1.0,
                          color: Colors.redAccent
                        ),
                        borderRadius: BorderRadius.circular(15.0)
                      ),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.thumb_up, color: Colors.redAccent,),
                          SizedBox(width: 5.0,),
                          Text(
                            '点赞',
                            style: TextStyle(
                              color: Colors.redAccent
                            )
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {

                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 22.0, vertical: 5.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1.0,
                          color: Colors.redAccent
                        ),
                        borderRadius: BorderRadius.circular(15.0)
                      ),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.delete),
                          SizedBox(width: 5.0,),
                          Text(
                            '不喜欢'
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )

            ]),
          ),
          
        ],
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate{
  final Widget child;
  final Widget childBar;
  
  _SliverAppBarDelegate({this.child, this.childBar});
  // 高 最小/最大
  @override
  double get minExtent => 88.0;
  @override
  double get maxExtent => 88.0;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    if(shrinkOffset > 0) {
      return SizedBox(child: childBar);
    } else {
      return SizedBox(child: child);
    }
  }

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}