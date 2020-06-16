import 'package:flutter/material.dart';

class AlgodaoMenu extends StatefulWidget {
  @override
  _AlgodaoMenuState createState() => _AlgodaoMenuState();
}

class _AlgodaoMenuState extends State<AlgodaoMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          elevation: 0.0,
        ),
        body: Form(
          child: Container(
            child: Column(children: <Widget>[
              FlatButton(
                onPressed: () {},
                child: Text('teste'),
              ),
              SizedBox(
                  height: 44.0,
                  child: RaisedButton(
                    elevation: 6.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    child: Text(
                      "Entrar",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    textColor: Colors.white,
                    color: Color(0xFFE59730),
                    onPressed: () {
                     
                      
                    },
                  ),
                ),
            ]),
          ),
        ));
  }
}

class Pragas_Algodao extends StatefulWidget {
  @override
  _Pragas_AlgodaoState createState() => _Pragas_AlgodaoState();
}

class _Pragas_AlgodaoState extends State<Pragas_Algodao> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Algodão / Pragas',
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
                      color: Colors.white,
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
                                'assets/bicudo_algo.jpg',
                              ),
                              Text(
                                '\nBicudo do algodoeiro\n(Anthonomus grandis)',
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
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                'assets/broca_algo.jpg',
                              ),
                              Text(
                                '\nBroca da raiz (Eutinobothrus brasiliensis)',
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
                                'assets/mosca_branca.jpg',
                              ),
                              Text(
                                '\nMosca branca (Bemisia tabaci biótipo B)',
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
                                'assets/pulgao.jpg',
                              ),
                              Text(
                                '\nPulgão do algodoeiro (Aphis gossypii)',
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
                                'assets/perc_cast.jpg',
                              ),
                              Text(
                                '\nPercevejo castanho da raiz (Scaptocoris castanea)',
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
                                'assets/complexo1.jpg',
                              ),
                              Text(
                                '\nPercevejo verde. \nFede fede (Nezara viridula)',
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
                                'assets/complexo2.jpg',
                              ),
                              Text(
                                '\nPercevejo marrom.\nPercevejo da soja (Euschistus heros)',
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
                                'assets/complexo3.jpg',
                              ),
                              Text(
                                '\nPercevejo Verde Pequeno Piezodorus Guildinii',
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
                                'assets/lagarta.jpg',
                              ),
                              Text(
                                '\n\nCuruquerê do algodoeiro (Alabama argilacea)',
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
                                'assets/lg_falsa.png',
                              ),
                              Text(
                                '\nLagarta falsa-medideira (Chrysodeixis includens)',
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
                                'assets/lagar3.jpg',
                              ),
                              Text(
                                '\nLagarta da maçã (Heliothis virescens)',
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
                                'assets/helico.jpg',
                              ),
                              Text(
                                '\n Helicoverpa armigera (lagarta-do-velho-mundo).',
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
                                'assets/lagar_rosada.jpg',
                              ),
                              Text(
                                'Lagarta rosada (Pectinophora gossypiella)',
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
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                'assets/acaro_rajado.jfif',
                              ),
                              Text(
                                '\nÁcaro rajado (Tetranychus spp)',
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
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                'assets/acaro_vermelho.jpg',
                              ),
                              Text(
                                'Ácaro vermelho (Tetranychus ludeni)',
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
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                'assets/acaro_branco.jfif',
                              ),
                              Text(
                                '\nÁcaro branco (Polyphagotarsonemus latus)',
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