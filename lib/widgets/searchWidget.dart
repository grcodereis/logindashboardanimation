import 'package:flutter/material.dart';
import 'package:login_dash_animation/components/searchTextfield.dart';

class SearchWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 28),
      child: Row(
        children: <Widget>[
          Expanded(child: SearchTextField()),
          SizedBox(width: 11),
          Container(
            width: 70,
            height: 60,
            decoration: BoxDecoration(
              color: Color(0xFFF1f94aa),
              borderRadius: BorderRadius.circular(10)
            ),
            child: Icon(Icons.filter_list, color: Colors.white,size: 32),
          )
        ],
      ),
    );
  }
}