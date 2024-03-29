import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:sgaapp/shared/auth.dart';

class SplashPage extends StatefulWidget {
  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
  Future<void> navigationToNextPage() {
    if (LocalAuth.instance.auth) {
      return Navigator.of(context).pushReplacementNamed('MenuPrincpal');
    }
    return Navigator.of(context).pushReplacementNamed('/HomePage');
  }

  startSplashScreenTimer() async {
    var _duration = new Duration(seconds: 3);
    return new Timer(_duration, navigationToNextPage);
  }

  @override
  void initState() {
    super.initState();
    startSplashScreenTimer();
  }

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setEnabledSystemUIOverlays([]);

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
