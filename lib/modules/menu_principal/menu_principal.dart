import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:sgaapp/models/user_model.dart';
import 'package:sgaapp/modules/login/page/login_screen.dart';
import 'package:sgaapp/modules/menu_principal/utils/telas.dart';

class MenuPrincpal extends StatefulWidget {
  @override
  _MenuPrincpalState createState() => _MenuPrincpalState();
}

class _MenuPrincpalState extends State<MenuPrincpal> {
  int indice = 0;
  UserModel model;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Center(
          child: Text(
            "SGAAPP",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Color.fromRGBO(245, 207, 79, 1),
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: IconButton(
            icon: SvgPicture.asset(
              "assets/icones/icone_logo.svg",
              height: 25,
            ),
            onPressed: null,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset(
              "assets/icones/icone_drawerconfg.svg",
              height: 25,
            ),
            onPressed: () {
              _scaffoldKey.currentState.openEndDrawer();
            },
          ),
        ],
      ),
      endDrawer: Drawer(
        ///key: _scaffoldKey,
        child: Stack(
          children: <Widget>[
            //      _buildDrawerBack(),
            DrawerHeader(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: <Color>[
                Colors.deepOrange,
                Color.fromRGBO(245, 207, 79, 1)
              ])),
              child: null,
            ),
            ListView(
              padding: EdgeInsets.only(left: 32.0, top: 16.0),
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 8.0),
                  padding: EdgeInsets.fromLTRB(0.0, 16.0, 16.0, 8.0),
                  height: 170.0,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                          left: 0.0,
                          bottom: 0.0,
                          child: ScopedModelDescendant<UserModel>(
                            builder: (context, child, model) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Image.asset("assets/drawer.png",
                                      color: Colors.white, height: 80),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Olá , ${!model.isLoggedIn() ? "" : model.userData["name"]}",

                                    //"Olá , ${!model.isLoggedIn() ? "" : model.userData["name"]}",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              );
                            },
                          )),
                    ],
                  ),
                ),
                Divider(),
                ScopedModelDescendant<UserModel>(
                  builder: (context, child, model) {
                    return Container(
                      color: Colors.white,
                      child: ListTile(
                        leading: Icon(Icons.arrow_back),
                        title: Text(
                          "Sair",
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 19.0,
                              fontWeight: FontWeight.bold),
                        ),
                        onTap: () {
                          model.signOut();
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()));
                        },
                      ),
                    );
                  },
                ),
              ],
            )
          ],
        ),
      ),
      body: TELAS[indice],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        backgroundColor: Color(0xFFfefefe),
        currentIndex: indice,
        onTap: (valor) {
          setState(() {
            indice = valor;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icones/icone_plantio.svg",
              color: Color.fromRGBO(245, 207, 79, 1),
              height: 23,
            ),
            title: Text('Plantios',
                style: TextStyle(
                    color: Color.fromRGBO(245, 207, 79, 1), fontSize: 19)),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icones/icone_animais.svg",
              color: Color.fromRGBO(245, 207, 79, 1),
              height: 23,
            ),
            title: Text(
              'Animais',
              style: TextStyle(
                  color: Color.fromRGBO(245, 207, 79, 1), fontSize: 19),
            ),
          ),
        ],
      ),
    );
  }
}
