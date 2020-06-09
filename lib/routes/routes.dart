import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../db/database.dart';
import '../screens/login_screen.dart';

final AppDatabase db = GetIt.I.get<AppDatabase>();

Map<String, WidgetBuilder> routers = {
  '/HomePage': (BuildContext context) => LoginScreen(db: db),
};
