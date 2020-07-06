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
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.green,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              SizedBox(
                height: 100,
              ),
              ListTile(
                title: Text("Alterar nome"),
                onTap: () {
                  model.signOut();
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
              ),
              ListTile(
                title: Text("Alterar senha"),
                onTap: () {
                  model.signOut();
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
              ),
              ListTile(
                title: Text("Sair"),
                onTap: () {
                  model.signOut();
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
              ),
            ],
          ),
        ),
      ),
      body: TELAS[indice],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green,
        currentIndex: indice,
        onTap: (valor) {
          setState(() {
            indice = valor;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            title: Text('Plantios',
                style: TextStyle(color: Colors.white, fontSize: 19)),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.mail,
            ),
            title: Text(
              'Animais',
              style: TextStyle(color: Colors.white, fontSize: 19),
            ),
          ),
        ],
      ),
    );
  }
}
