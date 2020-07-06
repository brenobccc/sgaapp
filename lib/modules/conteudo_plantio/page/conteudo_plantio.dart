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
      appBar: AppBar(
        title: Text("título"),
        centerTitle: true,
        backgroundColor: Colors.green,
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () => Navigator.pop(context)),
      ),
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
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "ListDeCards",
                            arguments: {});
                      },
                      child: Material(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                            height: 50,
                            width: 90,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15)),
                            child: Center(child: Text("Doenças"))),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "ListDeCards",
                            arguments: {});
                      },
                      child: Material(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                            height: 50,
                            width: 90,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15)),
                            child: Center(child: Text("Pragas"))),
                      ),
                    ),
                    Expanded(child: Container()),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
              ]),
        ),
      ),
    );
  }
}
