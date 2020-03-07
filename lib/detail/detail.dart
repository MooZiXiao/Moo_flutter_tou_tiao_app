import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DetailPage extends StatefulWidget {
  final int id;
  DetailPage(this.id);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text('MMMMMMMMMMMMMMM'),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.more_horiz),
                onPressed: () {

                },
              )
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'MMMMMMMMMMMMMMM',
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
                                  backgroundImage: NetworkImage('https://n.sinaimg.cn/blog/267/w180h87/20200306/772d-iqmtvwv2621956.jpg'),
                                ),
                              ),
                            ),
                            SizedBox(width: 10.0,),
                            Text(
                              'MooZioo',
                              style: TextStyle(
                                color: Colors.black
                              ),
                            ),
                          ],
                        ),
                        RaisedButton.icon(
                          onPressed: () {

                          },
                          icon: Icon(Icons.add, color: Colors.white,),
                          label: Text(
                            '关注',
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
                                backgroundImage: NetworkImage('https://n.sinaimg.cn/blog/267/w180h87/20200306/772d-iqmtvwv2621956.jpg'),
                              ),
                            ),
                          ),
                          SizedBox(width: 10.0,),
                          Column(
                            children: <Widget>[
                              Text(
                                'MooZioo',
                                style: TextStyle(
                                  color: Colors.black
                                ),
                              ),
                              Text(
                                '1小时前',
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

                        },
                        icon: Icon(Icons.add, color: Colors.white,),
                        label: Text(
                          '关注',
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
                child: Text(
                  '''在3月6日的座谈会上，习近平说，这是党的十八大以来脱贫攻坚方面最大规模的会议。《时政新闻眼》查询发现，五年前的11月份，中国也曾高规格开过一次中央扶贫开发工作会议，那是党的十八届五中全会后的第一个中央工作会议。会议期间，中西部22个省区市党政主要负责同志向中央签署脱贫攻坚责任书《时政新闻眼》发现，这五位发言者所在的区域颇具代表性。云南怒江、新疆和田均在全国深度贫困地区“三州三区”之列。习近平对主要聚居在云南怒江州贡山县独龙江乡的独龙族群众脱贫一直牵挂于心。2014年4月考察新疆时，他曾召集和田等南疆5个地州负责同志开座谈会。2017年3月，兰考成为贫困退出机制建立后河南全省首个脱贫的贫困县。赫章、大化则分别是贵州16个深度贫困县之一和广西4个极度贫困县之一，尚未脱贫人口分别是2.5万人和1.7万余人。时政新闻眼》发现，这五位发言者所在的区域颇具代表性。云南怒江、新疆和田均在全国深度贫困地区“三州三区”之列。习近平对主要聚居在云南怒江州贡山县独龙江乡的独龙族群众脱贫一直牵挂于心。2014年4月考察新疆时，他曾召集和田等南疆5个地州负责同志开座谈会。2017年3月，兰考成为贫困退出机制建立后河南全省首个脱贫的贫困县。赫章、大化则分别是贵州16个深度贫困县之一和广西4个极度贫困县之一，尚未脱贫人口分别是2.5万人和1.7万余人。''',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
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
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 10.0),
                          width: MediaQuery.of(context).size.width / 2 - 20,
                          child: Text(
                            '主要负责同志向中央向中央',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        
                        Container(
                          margin: EdgeInsets.only(top: 10.0),
                          width: MediaQuery.of(context).size.width / 2 - 20,
                          child: Text(
                            '主要负责同志向中央向中央',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        
                        Container(
                          margin: EdgeInsets.only(top: 10.0),
                          width: MediaQuery.of(context).size.width / 2 - 20,
                          child: Text(
                            '主要负责同志向中央向中央',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10.0),
                          width: MediaQuery.of(context).size.width / 2 - 20,
                          child: Text(
                            '主要负责同志向中央向中央',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
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
  double get minExtent => 80.0;
  @override
  double get maxExtent => 80.0;

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