import 'package:flutter/material.dart';

class SlideDots extends StatelessWidget {
 final bool isActive;

  const SlideDots({Key key, this.isActive}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 100),
      margin: const EdgeInsets.symmetric(horizontal: 3),
      height: isActive ? 14 : 6,
      width: isActive ? 14 : 6,
      decoration: BoxDecoration(
        // color: isActive ? Theme.of(context).primaryColor : Colors.grey,
        color: isActive ? Colors.white : Color(0x9affffff),

        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}
