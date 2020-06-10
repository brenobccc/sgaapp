import 'package:flutter/material.dart';

class CardHome extends StatefulWidget {
  @override
  _CardHomeState createState() => _CardHomeState();
}

class _CardHomeState extends State<CardHome> {
  var border = Radius.circular(20);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 22.0, right: 22.0),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, "screenCards");
        },
        child: Container(
          constraints: BoxConstraints(
              minWidth: MediaQuery.of(context).size.width * 0.9,
              maxWidth: MediaQuery.of(context).size.width * 0.9,
              maxHeight: MediaQuery.of(context).size.height * 0.6,
              minHeight: MediaQuery.of(context).size.height * 0.6),
          decoration: BoxDecoration(
              color: Colors.orange[500], borderRadius: BorderRadius.circular(20.0)),
          child: Stack(
            children: <Widget>[
  
              Positioned(
                  top: 20.0,
                  left: 20.0,
                  child: Icon(
                    Icons.record_voice_over,
                    size: 40.0,
                    color: Colors.grey.shade700,
                  )),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.2,
                left: 30.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Agronomia",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize:
                                MediaQuery.of(context).size.width * 0.10)),
                  ],
                ),
              ),
              Positioned(
                bottom: 0.0,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.only(
                          bottomLeft: border, bottomRight: border)),
                  constraints: BoxConstraints(
                      minWidth: MediaQuery.of(context).size.width * 0.9,
                      maxHeight: MediaQuery.of(context).size.height * 0.15,
                      maxWidth: MediaQuery.of(context).size.width * 0.9,
                      minHeight: MediaQuery.of(context).size.height * 0.15),
                  child: Center(
                    child: ListTile(
                      title: Text("descrição descrição descrição descrição "),
                      leading: Icon(Icons.fastfood),
                      trailing: Icon(Icons.keyboard_arrow_right),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
