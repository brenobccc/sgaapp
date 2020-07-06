import 'package:flutter/material.dart';
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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            GestureDetector(
              child: Text(
                "Sair",
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {
                model.signOut();
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
            ),
          ],
        ),
      ),
      body: TELAS[indice],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indice,
        onTap: (valor) {
          setState(() {
            indice = valor;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Plantios'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            title: Text('Animais'),
          ),
        ],
      ),
    );
  }
}
