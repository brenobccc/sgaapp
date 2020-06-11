import 'package:flutter/material.dart';

class ApiculturaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 4,
          crossAxisCount: 2,
          children: <Widget>[
            Container(
                child: ConstrainedBox(
                    constraints: BoxConstraints.expand(),
                    child: FlatButton(
                      onPressed: () {},
                      child: Image.asset('assets/map.png'),
                      color: Colors.transparent,
                    ))),
            Container(
                child: ConstrainedBox(
                    constraints: BoxConstraints.expand(),
                    child: FlatButton(
                      onPressed: () {},
                      child: Image.asset('assets/col.png'),
                      color: Colors.transparent,
                    ))),
            Container(
                child: ConstrainedBox(
                    constraints: BoxConstraints.expand(),
                    child: FlatButton(
                      onPressed: () {},
                      child: Image.asset('assets/pro.png'),
                      color: Colors.transparent,
                    ))),
            Container(
                child: ConstrainedBox(
                    constraints: BoxConstraints.expand(),
                    child: FlatButton(
                      onPressed: () {},
                      child: Image.asset('assets/quest.png'),
                      color: Colors.transparent,
                    ))),
            Container(
                child: ConstrainedBox(
                    constraints: BoxConstraints.expand(),
                    child: FlatButton(
                      onPressed: () {},
                      child: Image.asset('assets/colm.png'),
                      color: Colors.transparent,
                    ))),
            Container(
                child: ConstrainedBox(
                    constraints: BoxConstraints.expand(),
                    child: FlatButton(
                      onPressed: () {},
                      child: Image.asset('assets/prod.png'),
                      color: Colors.transparent,
                    ))),
            Container(
                child: ConstrainedBox(
                    constraints: BoxConstraints.expand(),
                    child: FlatButton(
                      onPressed: () {},
                      child: Image.asset('assets/grup.png'),
                      color: Colors.transparent,
                    ))),
          ],
        )
      ],
    );
  }
}
