import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:sgaapp/models/user_model.dart';
import 'package:sgaapp/screens/login_screen.dart';
import 'package:sgaapp/tiles/drawer_tile.dart';
class CustomDrawer extends StatelessWidget {
  final PageController pageController;
  
  CustomDrawer(this.pageController);
  
  @override
  Widget build(BuildContext context) {
  
    return Drawer(
      child: Stack(
        children: <Widget>[
    //      _buildDrawerBack(),
          DrawerHeader(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[
                      Colors.deepOrange,
                      Colors.orangeAccent 
                    ] 

                    )
                ), child: null,
              ),
          ListView(
            padding: EdgeInsets.only(left: 32.0, top: 16.0),
            children: <Widget>[
              
              Container(
                margin: EdgeInsets.only(bottom: 8.0),
                padding: EdgeInsets.fromLTRB(0.0, 16.0, 16.0, 8.0),
                height: 170.0,
                child: Stack(children: <Widget>[
                  
                  Positioned(
                      left: 0.0,
                      bottom: 0.0,
                      child: ScopedModelDescendant<UserModel>(
                        builder: (context, child, model) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Olá , ${!model.isLoggedIn() ? "" : model.userData["name"]}",
                                style: TextStyle(
                                  color: Colors.white,
                                    fontSize: 19.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              GestureDetector(
                                child: Text(
                                  !model.isLoggedIn()
                                      ? "Entre ou cadastre-se >"
                                      : "Sair",
                                  style: TextStyle(
                                      color: Theme.of(context).primaryColor,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                onTap: () {
                                  model.signOut();
                                  Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                          builder: (context) => LoginScreen()));
                                },
                              )
                            ],
                          );
                        },
                      ))
                ]),
              ),
              Divider(),
              DrawerTile(Icons.home, "Inicio", pageController, 0),
              DrawerTile(Icons.control_point, "Controle de Animais", pageController, 1),
              DrawerTile(Icons.location_on, "Pecuária", pageController, 2),
              DrawerTile(Icons.playlist_add_check, "Apicultura",pageController, 3),
              DrawerTile(Icons.help, "Sobre",pageController, 4),
              DrawerTile(Icons.keyboard_backspace, "Dicas",pageController, 5),
        
            ], 
          )
        ],
      ),
    );
  }
}
