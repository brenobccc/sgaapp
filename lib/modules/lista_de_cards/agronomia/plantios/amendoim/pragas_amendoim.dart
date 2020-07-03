import 'package:flutter/material.dart';

//TELA DAS PRAGAS DO ALGODÃO

class PragasAmendoim extends StatefulWidget {
  @override
  _PragasAmendoimState createState() => _PragasAmendoimState();
}

class _PragasAmendoimState extends State<PragasAmendoim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Amendoim / Pragas',
            style: TextStyle(fontSize: 20),
          ),
          elevation: 1.0,
        ),
        body: Column(
          children: <Widget>[
            SizedBox(height: 16.0),
            Expanded(
                child: GridView.count(
              physics: BouncingScrollPhysics(),
              crossAxisCount: 2,
              childAspectRatio: .85,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(13),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.green[50],
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 17),
                          blurRadius: 17,
                          spreadRadius: -23,
                          color: Colors.red,
                        ),
                      ],
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Column(
                            children: <Widget>[
                              // Image.asset(
                              //   'assets/agronomia/amendoim/pragas/tripes.png',
                              // ),
                              Text(
                                'Tripes-do-prateamento',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(13),
                  child: Container(
                    // padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(13),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 17),
                          blurRadius: 17,
                          spreadRadius: -23,
                          color: Colors.red,
                        ),
                      ],
                    ),
                    child: Material(
                      color: Colors.green[50],
                      child: InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                'assets/broca_da_raiz.png',
                              ),
                              Text(
                                'Lagarta-do-pescoço-vermelho',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(13),
                  child: Container(
                    // padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.green[50],
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 17),
                          blurRadius: 17,
                          spreadRadius: -23,
                          color: Colors.red,
                        ),
                      ],
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                'assets/mosca_branca.png',
                              ),
                              Text(
                                'Lagarta-da-soja',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(13),
                  child: Container(
                    // padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.green[50],
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                'assets/pulgao_do_algodoeiro.png',
                              ),
                              Text(
                                'Percevejo-preto',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(13),
                  child: Container(
                    // padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.green[50],
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 17),
                          blurRadius: 17,
                          spreadRadius: -23,
                        ),
                      ],
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                'assets/percevejo_castanho.png',
                              ),
                              Text(
                                'Percevejo-castanho',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(13),
                  child: Container(
                    // padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.green[50],
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 17),
                          blurRadius: 17,
                          spreadRadius: -23,
                          color: Colors.red,
                        ),
                      ],
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                'assets/nezara_pecevejo1and2.png',
                              ),
                              Text(
                                'Larva-alfinete',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(13),
                  child: Container(
                    // padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.green[50],
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 17),
                          blurRadius: 17,
                          spreadRadius: -23,
                          color: Colors.red,
                        ),
                      ],
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                'assets/nezara_pecevejo1and2.png',
                              ),
                              Text(
                                'Lagarta-rosca',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(13),
                  child: Container(
                    // padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.green[50],
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 17),
                          blurRadius: 17,
                          spreadRadius: -23,
                          color: Colors.red,
                        ),
                      ],
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                'assets/nezara_pecevejo1and2.png',
                              ),
                              Text(
                                'Lagarta-elasmo',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(13),
                  child: Container(
                    // padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.green[50],
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 17),
                          blurRadius: 17,
                          spreadRadius: -23,
                          color: Colors.red,
                        ),
                      ],
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                'assets/lagarta_rosada.png',
                              ),
                              Text(
                                'Gafanhoto-do-nordeste',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(13),
                  child: Container(
                    // padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.green[50],
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 17),
                          blurRadius: 17,
                          spreadRadius: -23,
                          color: Colors.red,
                        ),
                      ],
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                'assets/lagarta_rosada.png',
                              ),
                              Text(
                                'Curuquerê-dos-capinzais',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(13),
                  child: Container(
                    // padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.green[50],
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 17),
                          blurRadius: 17,
                          spreadRadius: -23,
                          color: Colors.red,
                        ),
                      ],
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                'assets/lagarta_rosada.png',
                              ),
                              Text(
                                'Lagarta-da-teia',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(13),
                  child: Container(
                    // padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.green[50],
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 17),
                          blurRadius: 17,
                          spreadRadius: -23,
                          color: Colors.red,
                        ),
                      ],
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                'assets/lagarta_rosada.png',
                              ),
                              Text(
                                'Ácaro-rajado',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(13),
                  child: Container(
                    // padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.green[50],
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 17),
                          blurRadius: 17,
                          spreadRadius: -23,
                          color: Colors.red,
                        ),
                      ],
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                'assets/lagarta_rosada.png',
                              ),
                              Text(
                                'Ácaro-vermelho',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                ClipRRect(
                  child: Container(
                    // padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.green[50],
                      borderRadius: BorderRadius.circular(13),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 17),
                          blurRadius: 17,
                          spreadRadius: -23,
                          color: Colors.red,
                        ),
                      ],
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                'assets/acaros.png',
                              ),
                              Text(
                                'Traça-das-vagens',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                ClipRRect(
                  child: Container(
                    // padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.green[50],
                      borderRadius: BorderRadius.circular(13),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 17),
                          blurRadius: 17,
                          spreadRadius: -23,
                          color: Colors.red,
                        ),
                      ],
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                'assets/acaros.png',
                              ),
                              Text(
                                'Gorgulho',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                ClipRRect(
                  child: Container(
                    // padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.green[50],
                      borderRadius: BorderRadius.circular(13),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 17),
                          blurRadius: 17,
                          spreadRadius: -23,
                          color: Colors.red,
                        ),
                      ],
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                'assets/acaros.png',
                              ),
                              Text(
                                'Cascudinho',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ))
          ],
        ));
  }
}
