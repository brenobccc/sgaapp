import 'package:flutter/material.dart';
import 'package:sgaapp/db/database.dart';

import 'package:sgaapp/modules/apicultura/page/apicultura.dart';
import 'package:sgaapp/modules/dicas/page/dicas.dart';

import 'package:sgaapp/modules/home/page/home_page.dart';

import 'package:sgaapp/modules/pecuaria/lojas_tab.dart';

import 'components/custom_drawer.dart';

class HomeScreen extends StatelessWidget {
  final _pageController = PageController();
  HomeScreen({Key key, this.db}) : super(key: key);
  final AppDatabase db;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange[300],
            elevation: 0,
          ),
          body: HomePage(),
          drawer: CustomDrawer(_pageController),
        ),
        Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: Text(
              'Pecuaria',
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            centerTitle: true,
            elevation: 0.0,
          ),
          body: HomePage(),
          drawer: CustomDrawer(_pageController),
        ),
        Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: Text(
              'Pecuaria',
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            centerTitle: true,
            elevation: 0.0,
          ),
          drawer: CustomDrawer(_pageController),
          body: LojasTab(),
        ),
        Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/bee.png',
                  fit: BoxFit.contain,
                  height: 50,
                ),
                Container(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    "Apicultura",
                    style: TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            centerTitle: true,
            elevation: 0.0,
          ),
          drawer: CustomDrawer(_pageController),
          body: ApiculturaPage(),
        ),
        Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange[200],
            title: Text(
              'Pecuaria',
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            centerTitle: true,
            elevation: 0.0,
          ),
          drawer: CustomDrawer(_pageController),
          body: Dicas(),
        ),
      ],
    );
  }
}
