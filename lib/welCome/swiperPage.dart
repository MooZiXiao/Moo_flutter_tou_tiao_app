import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperPage extends StatefulWidget {
  @override
  _SwiperPageState createState() => _SwiperPageState();
}

class _SwiperPageState extends State<SwiperPage> {
  
  final List<String> imageList = [
    'images/1.png',
    'images/2.png',
    'images/3.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Swiper(
        loop: false,
        itemCount: imageList.length,
        itemBuilder: (BuildContext context, int index) {
          if(index == imageList.length -1) {
            // return GestureDetector(
            //   onTap: () {

            //   },
            //   child: Image.asset(
            //     imageList[index],
            //     fit: BoxFit.cover
            //   )
            // );
            return Stack(
              children: <Widget>[
                Image.asset(
                  imageList[index],
                  fit: BoxFit.cover,
                  height: double.infinity,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 14.0),
                    margin: EdgeInsets.only(
                      bottom: 27.0
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blueAccent
                      ),
                      borderRadius: BorderRadius.circular(28.0)
                    ),
                    child: FlatButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      child: Text(
                        '立即体验',
                        style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.normal
                        ),
                      ),
                    ),
                  ),
                )
              ],
            );
          } else {
            return Image.asset(
              imageList[index],
              fit: BoxFit.cover
            );
          }
        },
      ),
    );
  }
}