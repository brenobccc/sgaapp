import 'package:flutter/material.dart';

class CardHome extends StatefulWidget {
  final String descricao;
  final String titulo;
  final String icone;
  final String rota;
  final Map<dynamic, dynamic> args;

  const CardHome(
      {Key key, this.descricao, this.titulo, this.icone, this.rota, this.args})
      : super(key: key);

  @override
  _CardHomeState createState() => _CardHomeState();
}

class _CardHomeState extends State<CardHome> {
  final borda = Radius.circular(24);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 22.0, right: 22.0),
      child: InkWell(
        onTap: () => Navigator.pushNamed(context, widget.rota ?? "alertaErro",
            arguments: widget.args),
        child: Material(
          elevation: 10,
          borderRadius: BorderRadius.all(borda),
          child: Container(
            constraints: BoxConstraints(
                minWidth: MediaQuery.of(context).size.width * 0.6,
                maxWidth: MediaQuery.of(context).size.width * 0.6,
                // maxHeight: MediaQuery.of(context).size.height * 0.3,
                // minHeight: MediaQuery.of(context).size.height * 0.4
                ),
            child: Stack(
              children: <Widget>[
                Positioned(
                  //top: 20.0,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Image.asset(
                      "assets/home/agronomia.png",
                      fit: BoxFit.contain,
                      filterQuality: FilterQuality.high,
                    ),
                  ),
                ),
                // Positioned(
                //     top: 20.0,
                //     left: 20.0,
                //     child: widget.icone == null
                //         ? Icon(
                //             Icons.record_voice_over,
                //             size: 20.0,
                //             color: Colors.grey.shade700,
                //           )
                //         : Image.asset(widget.icone)),
                // Positioned(
                //   top: MediaQuery.of(context).size.height * 0.15,
                //   left: 30.0,
                //   child: Column(
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     children: <Widget>[
                //       Container(
                //         color: Colors.red,
                //         constraints: BoxConstraints(
                //           minWidth: MediaQuery.of(context).size.width * 0.6,
                //           maxWidth: MediaQuery.of(context).size.width * 0.6,
                //           maxHeight: MediaQuery.of(context).size.height * 0.3,
                //           //minHeight: MediaQuery.of(context).size.height * 0.1,
                //         ),
                //         //color: Colors.red,
                //         child: Text(
                //           widget.titulo ??
                //               "Erro24 descrição vazia! Erro24 Erro24 Erro24 Erro24 Erro24 descrição vazia !",
                //           style: TextStyle(
                //               color: Colors.orange[300],
                //               fontSize:
                //                   MediaQuery.of(context).size.width * 0.10),
                //           textScaleFactor: 1,
                //           overflow: TextOverflow.ellipsis,
                //           maxLines: 2,
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                Positioned(
                  bottom: 0.0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.orange[300],
                      borderRadius: BorderRadius.only(
                          bottomLeft: borda, bottomRight: borda),
                    ),
                    constraints: BoxConstraints(
                        minWidth: MediaQuery.of(context).size.width * 0.6,
                        maxHeight: MediaQuery.of(context).size.height * 0.13,
                        maxWidth: MediaQuery.of(context).size.width * 0.6,
                        minHeight: MediaQuery.of(context).size.height * 0.13),
                    child: ListTile(
                      title: Text(
                        widget.titulo ?? "sem descrição fewwre fefwe fefwe",
                        style: TextStyle(color: Colors.white,fontSize:23 ),
                        textScaleFactor: 1,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
