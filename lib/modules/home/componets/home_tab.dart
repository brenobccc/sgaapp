import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset("assets/splash.png"),
        ClipPath(
          child: Container(
            height: 170,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color(0xFF3383CD),
                    Color(0xFF11249F),
                  ],
                )),
          ),
        ),
        CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              floating: true,
              snap: true,
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              flexibleSpace: FlexibleSpaceBar(
                title: const Text(
                  "Home",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                  ),
                ),
                centerTitle: true,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
