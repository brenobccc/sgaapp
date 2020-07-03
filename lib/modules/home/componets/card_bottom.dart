import 'package:flutter/material.dart';
class CardBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color:  Colors.orange[300]),
        constraints: BoxConstraints(
            minWidth: MediaQuery.of(context).size.width * 0.26,
            maxWidth: MediaQuery.of(context).size.width * 0.26,
            maxHeight: MediaQuery.of(context).size.height * 0.15),
        child:  Stack(
          children: <Widget>[
            Positioned(
              left: 1.0,
              child: Icon(
                Icons.store,
                size: 30.0,
                color: Colors.white,
              ),
            ),
            Positioned(
              bottom: 2.0,
              left: 3.0,
              child:  Text(
                "oioioioi",
                style:
                TextStyle(color: Colors.white, fontSize: 16.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}
