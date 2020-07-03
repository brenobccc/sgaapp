import 'package:flutter/material.dart';
import 'package:polygon_clipper/polygon_border.dart'; // Import package for PolygonBorder

class Poligono extends StatefulWidget {
  final String heroTag;
  final Color cor;

  const Poligono({Key key, this.heroTag, this.cor}) : super(key: key);
  @override
  _PoligonoState createState() => _PoligonoState();
}

class _PoligonoState extends State<Poligono> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor:widget.cor??Colors.green,
      heroTag: widget.heroTag,
      shape: PolygonBorder(
        sides: 6,
        borderRadius: 5.0, // Default 0.0 degrees
        rotate: 0.0, // Default 0.0 degrees
        border: BorderSide.none, // Default BorderSide.none
      ),
      onPressed: () {},
      child: Icon(Icons.star),
    );
  }
}
