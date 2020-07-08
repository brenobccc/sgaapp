import 'package:flutter/material.dart';

class SubCard extends StatelessWidget {
  final border = Radius.circular(20);
  final String titulo;
  final Function onPressed;
  final String rota;
  final Map<dynamic, dynamic> args;
  final String imagem;
  final Color color;

  SubCard(
      {Key key,
      this.titulo,
      this.onPressed,
      this.rota,
      this.args,
      this.imagem,
      this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, rota, arguments: args);
      },
      child: Material(
        //color: color ?? Color.fromRGBO(245, 207, 79, 0.5),
        borderRadius: BorderRadius.circular(15),
        elevation: 3,
        child: Column(
          children: <Widget>[
            Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                height: height * 0.18,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.only(topLeft: border, topRight: border),
                  color: color ?? Color.fromRGBO(245, 207, 79, 0.9),
                ),
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Image.asset(imagem ?? "assets/bee.png"),
                ))),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.only(bottomLeft: border, bottomRight: border),
                  color: color ?? Color.fromRGBO(245, 207, 79, 0.6),
                ),
                padding: EdgeInsets.all(5),
                child: Text(
                  titulo ?? "sem descrição",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
