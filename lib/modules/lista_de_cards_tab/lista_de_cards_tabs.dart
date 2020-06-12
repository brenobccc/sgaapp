//tesye
import 'package:flutter/material.dart';
import 'package:sgaapp/modules/lista_de_cards/componets/cards.dart';

class ListDeCarsTabs extends StatefulWidget {
  final Map argumentos;

  const ListDeCarsTabs({Key key, this.argumentos}) : super(key: key);
  @override
  _ListDeCarsTabsState createState() => _ListDeCarsTabsState();
}

class _ListDeCarsTabsState extends State<ListDeCarsTabs> {
  var controller = TextEditingController();

  createGrid(BuildContext context, List lista) {
    return GridView.builder(
      //shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 25.0,
        crossAxisSpacing: 25.0,
        childAspectRatio: 0.8,
      ),
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      itemCount: lista.length ?? 10,
      itemBuilder: (context, index) {
        return lista[index] ?? Cards();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () => Navigator.pop(context)),
          backgroundColor: Colors.transparent,
          elevation: 0,
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                child: Text(widget.argumentos['listaCards'][0]['titulo']),
              ),
              Tab(
                child: Text(widget.argumentos['listaCards'][1]['titulo']),
              )
            ],
          ),
        ),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10)),
                  color: Colors.transparent,
                ),
                child: TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        width: 20,
                        color: Colors.black,
                      ),
                    ),
                    hintText: "Pesquise aqui",
                  ),
                ),
              ),
              Expanded(
                child: TabBarView(children: <Widget>[
                  createGrid(
                    context,
                    widget.argumentos['listaCards'][0]['lista'],
                  ),
                  createGrid(
                    context,
                    widget.argumentos['listaCards'][1]['lista'],
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
