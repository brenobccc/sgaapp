import 'package:flutter/material.dart';
import 'package:sgaapp/db/database.dart';
import 'package:sgaapp/pages/home_page.dart';
import 'package:sgaapp/tabs/home_tab.dart';
import 'package:sgaapp/tabs/lojas_tab.dart';
import 'package:sgaapp/tabs/meus_pedidos.dart';
import 'package:sgaapp/tabs/products_tab.dart';
import 'package:sgaapp/widgets/custom_drawer.dart';

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
          body: HomeTab(),
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
          body: HomePage(db: db),
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
          body: PedidosTab(),
        ),
      ],
    );
  }
}
