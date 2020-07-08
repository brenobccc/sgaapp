import 'package:flutter/material.dart';
import 'package:sgaapp/components/sub_cards.dart';
import 'package:sgaapp/modules/conteudo_plantio/components/carrocel.dart';

class ConteudoPlantio extends StatefulWidget {
  final Map dados;

  ConteudoPlantio({Key key, this.dados}) : super(key: key);

  @override
  _ConteudoPlantioState createState() => _ConteudoPlantioState();
}

class _ConteudoPlantioState extends State<ConteudoPlantio> {
  List<Widget> imagens = [];

  criarImagens() {
    imagens = (widget.dados["dados"].imagens as List).map((e) {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Image.asset(e),
        ),
      );
    }).toList();
  }

  carrousel() => Center(
        child: Carousel(
          autoPlayAnimationDuration: Duration(seconds: 2),
          autoPlay: true,
          pauseAutoPlayOnTouch: Duration(seconds: 4),
          pagination: true,
          aspectRatio: 2,
          enlargeMainPage: true,
          pagerSize: 20,
          // viewportFraction: 1.0,
          activeIndicator: Colors.green,
          items: imagens,
        ),
      );

  @override
  void initState() {

    setState(() {
      criarImagens();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.dados["dados"].titulo),
        centerTitle: true,
        backgroundColor: Colors.green,
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () => Navigator.pop(context)),
      ),
      body: Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              carrousel(),
              Text(widget.dados["dados"].conteudo),
              Row(
                children: <Widget>[
                  Expanded(child: Container()),
                  FloatingActionButton.extended(
                    heroTag: "0",
                    onPressed: () async {
                      Navigator.pushNamed(context, "ListDeCards",
                          arguments: widget.dados["dados"].doencas);
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    // icon: Icon(
                    //   Icons.add,
                    //   size: 15,
                    // ),
                    label: Text(
                      'Doenças',
                      style: TextStyle(fontSize: 15),
                    ),
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.green,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  FloatingActionButton.extended(
                    heroTag: "1",
                    onPressed: () async {
                      Navigator.pushNamed(context, "ListDeCards",
                          arguments: widget.dados["dados"].pragas);
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    // icon: Icon(
                    //   Icons.add,
                    //   size: 15,
                    // ),
                    label: Text(
                      'Pragas',
                      style: TextStyle(fontSize: 15),
                    ),
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.green,
                  ),
                  Expanded(child: Container()),
                ],
              ),
            ]),
      ),
    );
  }
}
