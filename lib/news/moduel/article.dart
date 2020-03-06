// 序列化数据
class Article {
  int artId;
  String title;
  int autId;
  String autName;
  int commCount;
  int isTop;
  String pubdate;
  int imgType;
  List images;

  Article.fromJson(json) {
    artId = json['art_id'];
    title = json['title'];
    autId = json['aut_id'];
    autName = json['aut_name'];
    commCount = json['comm_count'];
    isTop = json['is_top'];
    pubdate = json['pubdate'];
    imgType = json['cover']['type'];
    images = json['cover']['images'];
  }
}