import 'package:flutter/material.dart';
import 'doencas_algodao.dart';
import 'pragas_algodao.dart';

class AlgodaoMenu extends StatefulWidget {
  @override
  _AlgodaoMenuState createState() => _AlgodaoMenuState();
}

//TELA MENU(TRES OPCOES PARA CADA PLANTIO)
class _AlgodaoMenuState extends State<AlgodaoMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: ListView(padding: EdgeInsets.all(16.0), children: <Widget>[
        SizedBox(
          height: 44.0,
          child: RaisedButton(
            elevation: 6.0,
            child: Text(
              "Pragas",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            textColor: Colors.white,
            color: Color(0xFFE59730),
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => PragasAlgodao()));
            },
          ),
        ),
        SizedBox(height: 16.0),
        SizedBox(
          height: 44.0,
          child: RaisedButton(
            elevation: 6.0,
            child: Text(
              "Doenças",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            textColor: Colors.white,
            color: Color(0xFFE59730),
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => DoencaAlgodao()));
            },
          ),
        ),
        SizedBox(height: 16.0),
        SizedBox(
          height: 44.0,
          child: RaisedButton(
            elevation: 6.0,
            child: Text(
              "Daninhas",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            textColor: Colors.white,
            color: Color(0xFFE59730),
            onPressed: () {},
          ),
        ),
      ]),
    );
  }
}
