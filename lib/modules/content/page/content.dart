import 'package:flutter/material.dart';

class Content extends StatefulWidget {
  final Map argumentos;
  const Content({Key key, this.argumentos}) : super(key: key);

  @override
  _ContentState createState() => _ContentState();
}

class _ContentState extends State<Content> {
  @override
  void initState() {
    print(widget.argumentos["dados"].imagem);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () => Navigator.pop(context)),
          backgroundColor: Color.fromRGBO(245, 207, 79, 1),
        ),
        resizeToAvoidBottomPadding: false,
        body: Scrollbar(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Container(
                    padding: EdgeInsets.only(bottom: 20),
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(245, 207, 79, 1),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(40),
                            bottomRight: Radius.circular(40))),
                    child: Image.asset(
                      widget.argumentos["dados"].imagem,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text("\n${widget.argumentos["dados"].titulo}",
                      style: TextStyle(fontSize: 30)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "\n${widget.argumentos["dados"].conteudo}",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
