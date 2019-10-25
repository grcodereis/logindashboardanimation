import 'package:flutter/material.dart';
import 'package:login_dash_animation/models/videoModel.dart';

class VideoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 28),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("The Best Surf Videos", style: TextStyle(
            color: Color(0xFFF072939),
            fontSize: 20,
            fontWeight: FontWeight.bold
          )),
          SizedBox(height: 10),
          Container(
            height: 110,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              itemCount: videos.length,
              itemBuilder: (context, index){
                VideoModel videoModel = videos[index];
                return videoItem(videoModel);
              },
            ),
          )
        ],
      ),
    );
  }

  Widget videoItem(VideoModel videoModel){
    return Container(
        margin: EdgeInsets.only(right: 20),
        width: 170,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xFFF1f94aa),
          image: DecorationImage(
            image: AssetImage(videoModel.img),
            fit: BoxFit.cover
          )
        ),
        child: Center(
          child: Container(
            height: 40,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15)
            ),
            child: Icon(Icons.play_arrow),
          ),
        ),
    );
  }

}