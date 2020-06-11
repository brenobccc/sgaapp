//tesye
import 'package:flutter/material.dart';

import 'componets/cards.dart';

class ScreenCards extends StatefulWidget {
  @override
  _ScreenCardsState createState() => _ScreenCardsState();
}

class _ScreenCardsState extends State<ScreenCards> {
  var controller = TextEditingController();
  List<Widget> tags = <Widget>[
    Cards(),
    Cards(),
    Cards(),
    Cards(),
    Cards(),
    Cards(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () => Navigator.pop(context)),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      resizeToAvoidBottomPadding: false,
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
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 25.0,
                  crossAxisSpacing: 25.0,
                  // childAspectRatio: 0.85,
                  childAspectRatio: 0.8,
                ),
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                itemCount: tags.length,
                itemBuilder: (context, index) {
                  return Cards();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
