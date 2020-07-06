import 'package:flutter/material.dart';
import 'package:sgaapp/modules/conteudo_plantio/components/carrocel.dart';

class ConteudoPlantio extends StatelessWidget {
  List<Widget> circleImage = [
    Center(
      child: Container(
          width: 180.0,
          height: 180.0,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ-pdb-vffsduKqDy0iLt_c3c7dsdbdhtBf4A&usqp=CAU")))),
    ),
    Center(
      child: Container(
          width: 180.0,
          height: 180.0,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      "https://image.shutterstock.com/image-photo/bright-spring-view-cameo-island-260nw-1048185397.jpg")))),
    )
  ];

  carrousel() => Center(
        child: Carousel(
          autoPlayAnimationDuration: Duration(seconds: 2),
          autoPlay: true,
          pauseAutoPlayOnTouch: Duration(seconds: 4),
          pagination: true,
          aspectRatio: 1.5,
          enlargeMainPage: true,
          pagerSize: 20,
          // viewportFraction: 1.0,
          activeIndicator: Colors.green,
          items: circleImage,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
         
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(
                  height: 15,
                ),
                carrousel(),
                SizedBox(
                  height: 15,
                ),
                Text(
                    "fjgslçkjfgr gfrkgope gnlerçg leçr ngrejhger bulacha fklew jrgirwelfjgslçkjfgr gfrkgope gnlerçg leçr ngrejhger bulacha fklew jrgirwel fjgslçkjfgr gfrkgope gnlerçg leçr ngrejhger bulacha fklew jrgirwel fjgslçkjfgr gfrkgope gnlerçg leçr ngrejhger bulacha fklew jrgirwel fjgslçkjfgr gfrkgope gnlerçg leçr ngrejhger bulacha fklew jrgirwel fjgslçkjfgr gfrkgope gnlerçg leçr ngrejhger bulacha fklew jrgirwel"),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: <Widget>[
                    Expanded(child: Container()),
                    FlatButton(
                      onPressed: () {},
                      child: Container(
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(15)),
                      ),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Container(
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(15)),
                      ),
                    ),
                    Expanded(child: Container()),
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}
