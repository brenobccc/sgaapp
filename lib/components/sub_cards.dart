import 'package:flutter/material.dart';

class SubCard extends StatelessWidget {
  final border = Radius.circular(20);
  final String titulo;
  final Function onPressed;
  final String rota;
  final Map<dynamic, dynamic> args;
  final String imagem;

  SubCard(
      {Key key, this.titulo, this.onPressed, this.rota, this.args, this.imagem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: () {
        //print(args["dados"].imagem);
        Navigator.pushNamed(context, rota, arguments: args);
      },
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
                child: Center(child: Image.asset(imagem ?? "assets/bee.png")

                    //      Text(
                    //   titulo ?? "sem descrição",
                    //   style: TextStyle(fontSize: 20),
                    // )

                    )),
            Container(
              child: Text(titulo ?? "sem descrição"),
            ),
          ],
        ),
      ),
    );
  }
}
