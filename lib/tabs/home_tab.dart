import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Widget _buildBodyBack() => Container(
      color: Colors.blueAccent[100],
    
    );
    
    return Stack(

      children: <Widget>[
        _buildBodyBack(),
        CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              floating: true,
              snap: true,
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              flexibleSpace: FlexibleSpaceBar(
                title: const Text("Home",style: TextStyle(color: Colors.white,fontSize:28,),),
                centerTitle: true,
              ),

            ),
          ],
        ),
        
      ],
      
    );
  }
}