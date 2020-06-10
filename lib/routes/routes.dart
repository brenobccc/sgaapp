import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:sgaapp/views/ScrenCards/ScrenCards.dart';
import 'package:sgaapp/views/content/content.dart';
import 'package:sgaapp/views/home/home_teste.dart';

import '../db/database.dart';
import '../screens/home_screen.dart';
import '../screens/login_screen.dart';

final AppDatabase db = GetIt.I.get<AppDatabase>();

Map<String, WidgetBuilder> routers = {
  '/HomePage': (BuildContext context) => LoginScreen(db: db),
  '/HomePagePrincipal': (BuildContext context) => HomeScreen(db: db),
  'screenCards': (BuildContext context) => ScreenCards(),
  'home': (BuildContext context) => Home(),
  'Content': (BuildContext context) => Content()
};
