import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:sgaapp/models/user_model.dart';
import 'package:sgaapp/routes/routes.dart';

import 'package:sgaapp/screens/splash_screen.dart';
import 'db/database.dart';

//import 'package:sgaapp/screens/signup_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var db = await $FloorAppDatabase.databaseBuilder('app_database.db').build();
  GetIt.I.registerSingleton<AppDatabase>(db);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScopedModel<UserModel>(
      model: UserModel(),
      child: MaterialApp(
        title: "Flutter's Clothings",
        theme: ThemeData(
            primarySwatch: Colors.purple, primaryColor: Colors.orange[200]),
        debugShowCheckedModeBanner: false,
        home: SplashPage(),
        routes: routers,
      ),
    );
  }
}
