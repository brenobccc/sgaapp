import 'package:flutter/material.dart';

class LojasTab extends StatelessWidget {
  final List<Widget> containers = [
    Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
    ),
    Container(
        decoration: BoxDecoration(
      color: Colors.white,
    )),
    Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          backgroundColor: Colors.green,
          appBar: AppBar(
            backgroundColor: Colors.green,
            bottom: TabBar(tabs: <Widget>[
              Tab(
                child: Text(
                  'data',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'data',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'data',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ]),
            elevation: 2.0,
          ),
          body: Column(
            children: <Widget>[
              Expanded(
                child: Container(
                  child: TabBarView(
                    children: containers,
                  ),
                ),
              )
            ],
          )

          // TabBarView(

          //   children: containers,

          // ),

          ),
    );
  }
}
/*
class LojasTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        children: <Widget>[
          CategorySelector(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  )),
            ),
          )
        ],
      ),
    );
  }
}

class CategorySelector extends StatefulWidget {
  @override
  _CategorySelectorState createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int selectedIndex = 0; //video
  final List<String> categories = [
    'Messages',
    'Online',
    'Groups',
    'Requests'
  ]; //video
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      color: Colors.green,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });

                 Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUpScreen()));

                
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
                child: Text(categories[index],
                    style: TextStyle(
                        color: index == selectedIndex
                            ? Colors.white
                            : Colors.white60,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.1)),
              ),
            );
          }),
    );
  }
}
*/
