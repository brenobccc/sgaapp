import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  final border = Radius.circular(20);
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    print("======> $height");
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, "Content");
      },
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        elevation: 3,
        child: Column(
          children: <Widget>[
            Container(
              height: height * 0.2,
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.only(topLeft: border, topRight: border),
                  color: Colors.green),
            ),
            Container(
              child: Text("teste"),
            ),
          ],
        ),
      ),
    );
  }
}
