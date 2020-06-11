import 'package:flutter/material.dart';
import 'package:sgaapp/components/tela_fundo.dart';
import 'package:sgaapp/modules/home/componets/card_home.dart';
import 'package:sgaapp/modules/home/componets/circule.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController controller;
  int indice;
  List<Widget> itens = [];

  List<Widget> _pages = [
    CardHome(
      titulo: "Agronomia",
      rota: "screenCards",
    ),
    CardHome(titulo: "Apicultura", rota: "screenCards"),
    CardHome(
      titulo: "Controle de Animais",
      rota: "screenCards",
      descricao: "Enbaixador",
    ),
    CardHome(titulo: "Financeiro", rota: "screenCards"),
    CardHome(rota: "screenCards"),
  ];

  List<Widget> indicadores() {
    itens.clear();
    int tam = _pages.length;
    for (int i = 0; i < tam; i++)
      itens.add(SlideDots(isActive: indice == i ? true : false));

    return itens;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Colors.white,
        body: TelaDeFundo(
          indicador: indicadores(),
          tela: Container(
            height: double.infinity,
            child: Center(
              child: Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.03),
                child: Container(
                  constraints: BoxConstraints(
                      maxHeight: MediaQuery.of(context).size.height * 0.55),
                  child: PageView.builder(
                    controller: controller,
                    itemCount: _pages.length,
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (index) {
                      indice = index;
                      setState(() {});
                    },
                    itemBuilder: (context, index) {
                      return _pages[index];
                    },
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
