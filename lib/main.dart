import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:sgaapp/models/user_model.dart';
import 'package:sgaapp/screens/login_screen.dart';
import 'package:sgaapp/screens/splash_screen.dart';
import 'db/database.dart';
//import 'package:sgaapp/screens/signup_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MyApp(
      db: await $FloorAppDatabase.databaseBuilder('app_database.db').build(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key key, this.db}) : super(key: key);
  final AppDatabase db;

  @override
  Widget build(BuildContext context) {
    return ScopedModel<UserModel>(
      model: UserModel(),
      child: MaterialApp(
          title: "Flutter's Clothing",
          theme: ThemeData(
              primarySwatch: Colors.orange, primaryColor: Colors.orange[200]),
          debugShowCheckedModeBanner: false,
          home: SplashPage(),
          routes: <String, WidgetBuilder>{
            '/HomePage': (BuildContext context) => LoginScreen(db:db)
          }),
    );
  }
}
