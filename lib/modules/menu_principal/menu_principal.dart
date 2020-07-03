import 'package:flutter/material.dart';
import 'package:sgaapp/modules/menu_principal/utils/telas.dart';

class MenuPrincpal extends StatefulWidget {
  @override
  _MenuPrincpalState createState() => _MenuPrincpalState();
}

class _MenuPrincpalState extends State<MenuPrincpal> {
  int indice = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
