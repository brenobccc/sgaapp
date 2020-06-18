import 'package:flutter/material.dart';
import 'package:sgaapp/modules/lista_de_cards/agronomia/plantios/amendoim/pragas_amendoim.dart';
import 'doencas_amendoim.dart';

class AmendoimMenu extends StatefulWidget {
  @override
  _AmendoimMenuState createState() => _AmendoimMenuState();
}

class _AmendoimMenuState extends State<AmendoimMenu> {
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
                  MaterialPageRoute(builder: (context) => Pragas_amendoim()));
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
                  MaterialPageRoute(builder: (context) => Doencas_amendoim()));
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
