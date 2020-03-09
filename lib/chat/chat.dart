import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Moo 同学'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: ChatMain(),
    );
  }
}

class ChatMain extends StatefulWidget {
  @override
  _ChatMainState createState() => _ChatMainState();
}

class _ChatMainState extends State<ChatMain> {

  _sendMessage() {
    
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 40.0,
                      height: 40.0,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage('https://n.sinaimg.cn/blog/267/w180h87/20200306/dc4a-iqmtvwv2642890.jpg'),
                      ),
                    ),
                    SizedBox(width: 10.0,),
                    Container(
                      child: Text('您好，Moo'),
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(224, 239, 251, 1),
                        borderRadius: BorderRadius.circular(8.0)
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      child: Text('您好，Moo'),
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(224, 239, 251, 1),
                        borderRadius: BorderRadius.circular(8.0)
                      ),
                    ),
                    SizedBox(width: 10.0,),
                    SizedBox(
                      width: 40.0,
                      height: 40.0,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage('https://n.sinaimg.cn/blog/267/w180h87/20200306/dc4a-iqmtvwv2642890.jpg'),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(12.0),
          color: Colors.grey[200],
          child: 
          Container(
            height: 40.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0)
            ),
            child: TextField(
              onSubmitted: (str) {
                _sendMessage();
              },
              decoration: InputDecoration(
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                contentPadding: EdgeInsets.only(
                  bottom: 10.0,
                  left: 10.0,
                  right: 10.0,
                )
              ),
            ),
          ),
        ),

      ],
    );
  }
}