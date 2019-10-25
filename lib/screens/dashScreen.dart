import 'package:flutter/material.dart';
import 'package:login_dash_animation/animations/fadeAnimation.dart';
import 'package:login_dash_animation/widgets/headerWidget.dart';
import 'package:login_dash_animation/widgets/popularBeaches.dart';
import 'package:login_dash_animation/widgets/searchWidget.dart';
import 'package:login_dash_animation/widgets/videoWidget.dart';

class DashScreen extends StatefulWidget {
  @override
  _DashScreenState createState() => _DashScreenState();
}

class _DashScreenState extends State<DashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            FadeAnimation(1.4, HeaderWidget()),
            SizedBox(height: 20),
            FadeAnimation(1.6,SearchWidget()),
            SizedBox(height: 20),
            FadeAnimation(1.8,PopularBeaches()),
            SizedBox(height: 20),
            FadeAnimation(2,VideoWidget())
          ],
        ),
      ),
    );
  }
}