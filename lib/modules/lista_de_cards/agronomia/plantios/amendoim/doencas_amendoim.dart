import 'package:flutter/material.dart';

//TELA DAS DANINHAS DO ALGODÃO
class DoencasAmendoim extends StatefulWidget {
  @override
  _DoencasAmendoimState createState() => _DoencasAmendoimState();
}

class _DoencasAmendoimState extends State<DoencasAmendoim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Amendoim / Doenças Principais',
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
                      color: Colors.green,
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
                                'assets/m_ramularia.png',
                              ),
                              Text(
                                'Mancha de Ramulária',
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
                      color: Colors.green[300],
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
                                'assets/ramulose.png',
                              ),
                              Text(
                                'Ramulose',
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
                    decoration: BoxDecoration(
                      color: Colors.orange,
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
                                'assets/fusarium.png',
                              ),
                              Text(
                                '\nMurcha de Fusarium',
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
                    decoration: BoxDecoration(
                      color: Colors.lightBlue,
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
                                'assets/mosaico1.png',
                              ),
                              Text(
                                'Mosaico comum',
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
                    decoration: BoxDecoration(
                      color: Colors.brown[300],
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
                                'assets/mosaico_nervuras.png',
                              ),
                              Text(
                                'Mosaico das nervuras',
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
                    decoration: BoxDecoration(
                      color: Colors.redAccent[100],
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
                                'assets/vermelhao.png',
                              ),
                              Text(
                                'Vermelhão',
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
                //FALTA INSERIR ESTES DOIS ULTIMOS
                // ClipRRect(
                //   borderRadius: BorderRadius.circular(13),
                //   child: Container(
                //     decoration: BoxDecoration(
                //       color: Colors.white,
                //       boxShadow: [
                //         BoxShadow(
                //           offset: Offset(0, 17),
                //           blurRadius: 17,
                //           spreadRadius: -23,
                //           color: Colors.red,
                //         ),
                //       ],
                //     ),
                //     child: Material(
                //       color: Colors.transparent,
                //       child: InkWell(
                //         onTap: () {},
                //         child: Padding(
                //           padding: const EdgeInsets.all(1.0),
                //           child: Column(
                //             children: <Widget>[
                //               Image.asset(
                //                 'assets/mancha_angular.jpg',
                //               ),
                //               Text(
                //                 '\nMancha Angular',
                //                 textAlign: TextAlign.center,
                //                 style: TextStyle(
                //                   fontStyle: FontStyle.italic,
                //                 ),
                //               )
                //             ],
                //           ),
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
                // ClipRRect(
                //   borderRadius: BorderRadius.circular(13),
                //   child: Container(
                //     decoration: BoxDecoration(
                //       color: Colors.white,
                //       boxShadow: [
                //         BoxShadow(
                //           offset: Offset(0, 17),
                //           blurRadius: 17,
                //           spreadRadius: -23,
                //           color: Colors.red,
                //         ),
                //       ],
                //     ),
                //     child: Material(
                //       color: Colors.transparent,
                //       child: InkWell(
                //         onTap: () {},
                //         child: Padding(
                //           padding: const EdgeInsets.all(1.0),
                //           child: Column(
                //             children: <Widget>[
                //               Image.asset(
                //                 'assets/nematoides.jfif',
                //               ),
                //               Text(
                //                 '\Nematoses',
                //                 textAlign: TextAlign.center,
                //                 style: TextStyle(
                //                   fontStyle: FontStyle.italic,
                //                 ),
                //               )
                //             ],
                //           ),
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ))
          ],
        ));
  }
}
