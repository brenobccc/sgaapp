import 'package:flutter/material.dart';
import 'package:sgaapp/views/home/componets/card_home.dart';
import 'package:sgaapp/views/home/componets/circule.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> _pages = [
    CardHome(),
    CardHome(),
    CardHome(),
    CardHome(),
    CardHome(),
    CardHome(),
    CardHome(),
    CardHome(),
    CardHome(),
    CardHome(),
  ];

  PageController controller;
  int indice;
  List<Widget> itens = [];

  @override
  void initState() {
    //controller = PageController(initialPage: widget.index);
    //indice = widget.index;
    super.initState();
  }

  List<Widget> forr() {
    itens.clear();
    // indice = widget.index;
    int tam = 10;

    for (int i = 0; i < tam; i++)
      itens.add(SlideDots(isActive: indice == i ? true : false));

    return itens;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.white,
      body: Container(
        height: double.infinity,
        child: Stack(
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
                        Colors.orange[300],
                        Colors.orange[300],
                      ],
                    )),
                    
                child: Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: forr(),
                    )),
              ),
            ),
             
           
            Center(
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
                      print("index página RENAN $index");
                    },
                    itemBuilder: (context, index) {
                      return _pages[index];
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
