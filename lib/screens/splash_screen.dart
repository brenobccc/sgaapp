
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashPage extends StatefulWidget {
  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
 void navigationToNextPage() {
    Navigator.pushReplacementNamed(context, '/HomePage');
  }

  startSplashScreenTimer() async {
  var _duration = new Duration(seconds: 5);
  return new Timer(_duration, navigationToNextPage);
}
  @override
  void initState() {
    super.initState();
    startSplashScreenTimer();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/splash.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
           //Image(image: AssetImage('assets/bee.png')),
            SizedBox(height: 150.0),
            CircularProgressIndicator(),
        ],
      ));
  }
}
