import 'package:flutter/material.dart';
import 'package:login_dash_animation/models/beachesModel.dart';

class PopularBeaches extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemCount: beaches.length,
        itemBuilder: (context, index){
          BeachesModel beachesModel = beaches[index];
          return beacheItem(beachesModel);
        },
      ),
    );
  }

  Widget beacheItem(BeachesModel beachesModel){

    return Container(
      margin: EdgeInsets.only(right: 20),
      width: 220,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xFFF082938)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              width: 220,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(beachesModel.img),
                  fit: BoxFit.cover
                )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    alignment: Alignment.topRight,
                    child: Icon(!beachesModel.isActive ? 
                    Icons.favorite_border : Icons.favorite, color: Colors.white,size: 32),
                  ),
                  SizedBox(height: 168),
                  Text(beachesModel.title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                  )),
                  SizedBox(height: 5),
                  Text(beachesModel.desc,style: TextStyle(
                    color: Colors.white,
                    fontSize: 14
                  )),
                  SizedBox(height: 20)
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: 49,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Simply dummy text of", style: TextStyle(
                  color: Colors.white,
                  fontSize: 12
                )),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    beacheItemIcon(Icons.location_on, "22°"),
                    SizedBox(width: 7),
                    beacheItemIcon(Icons.beach_access, "19°"),
                    SizedBox(width: 7),
                    beacheItemIcon(Icons.brightness_low, "12 kts"),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );

  }

  Widget beacheItemIcon(IconData iconData, String text){
    return Row(
      children: <Widget>[
        Icon(iconData, color: Colors.white),
        SizedBox(width: 2),
        Text(text, style: TextStyle(color: Colors.white))
      ],
    );
  }

}