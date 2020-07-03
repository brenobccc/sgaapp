import 'package:flutter/material.dart';

class TelaDeFundo extends StatefulWidget {
  final List<Widget> indicador;
  final Widget tela;
  final Color cor;

  const TelaDeFundo({Key key, this.tela, this.indicador, this.cor})
      : super(key: key);

  @override
  _TelaDeFundoState createState() => _TelaDeFundoState();
}

class _TelaDeFundoState extends State<TelaDeFundo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Stack(
        children: <Widget>[
          ClipPath(
            child: Container(
                height: 170,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                    ),
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        widget.cor ?? Colors.orange[300],
                        widget.cor ?? Colors.orange[300],
                      ],
                    )),
                child: widget.indicador != null
                    ? Align(
                        alignment: AlignmentDirectional(0, -1),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: widget.indicador,
                        ))
                    : Container()),
          ),
          widget.tela ?? Container()
        ],
      ),
    );
  }
}
