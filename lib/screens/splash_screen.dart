import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:sgaapp/db/database.dart';
import 'package:sgaapp/shared/auth.dart';

import 'home_screen.dart';

class SplashPage extends StatefulWidget {
  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
  Future<void> navigationToNextPage() {
    if (LocalAuth.instance.auth) {
      return Navigator.of(context).pushReplacementNamed('/HomePagePrincipal');
    }
    return Navigator.of(context).pushReplacementNamed('/HomePage');
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
