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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(245, 207, 79, 1),
        elevation: 0,
      ),
      drawer: Drawer(
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
                                  Image(
                                    image: AssetImage('assets/drawer.png'),
                                    height: 100,
                                    width: 100,
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
        backgroundColor: Colors.white,
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
