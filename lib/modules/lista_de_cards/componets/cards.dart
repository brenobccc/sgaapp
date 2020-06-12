import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  final border = Radius.circular(20);
  final String descricao;
  final Function onPressed;
  final String rota;
  final Map<dynamic, dynamic> args;

  Cards({Key key, this.descricao, this.onPressed, this.rota, this.args})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: rota != null
          ? () {
              args == null
                  ? Navigator.pushNamed(
                      context,
                      rota ?? "alertaErro",
                    )
                  : Navigator.pushNamed(context, rota ?? "alertaErro",
                      arguments: args);
            }
          : onPressed,
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        elevation: 3,
        child: Column(
          children: <Widget>[
            Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                height: height * 0.2,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.only(topLeft: border, topRight: border),
                  color: Colors.green,
                ),
                child: Center(
                    child: Text(
                  descricao ?? "sem descrição",
                  style: TextStyle(fontSize: 20),
                ))),
            Container(
              child: Text(descricao ?? "sem descrição"),
            ),
          ],
        ),
      ),
    );
  }
}
