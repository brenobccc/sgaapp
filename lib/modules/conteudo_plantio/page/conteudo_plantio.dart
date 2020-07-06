import 'package:flutter/material.dart';
import 'package:sgaapp/components/sub_cards.dart';
import 'package:sgaapp/modules/conteudo_plantio/components/carrocel.dart';

class ConteudoPlantio extends StatelessWidget {
  List<Widget> circleImage = [
    Padding(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ-pdb-vffsduKqDy0iLt_c3c7dsdbdhtBf4A&usqp=CAU")))),
    ),
    Padding(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ-pdb-vffsduKqDy0iLt_c3c7dsdbdhtBf4A&usqp=CAU")))),
    ),
    Padding(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ-pdb-vffsduKqDy0iLt_c3c7dsdbdhtBf4A&usqp=CAU")))),
    ),
  ];

  carrousel() => Center(
        child: Carousel(
          autoPlayAnimationDuration: Duration(seconds: 2),
          autoPlay: true,
          pauseAutoPlayOnTouch: Duration(seconds: 4),
          pagination: true,
          aspectRatio: 2,
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
      body: Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              carrousel(),
              Text(
                  "fjgslçkjfgr gfgfdg fddgfdg fg fgf fg fg f gfgf gfgfgfgfgf g gfrkgope gnlerçg leçr ngrejhger bulacha fklew jrgirwelfjgslçkjfgr gfrkgope gnlerçg leçr ngrejhger bulacha fklew jrgirwel fjgslçkjfgr gfrkgope gnlerçg leçr ngrejhger bulacha fklew jrgirwel fjgslçkjfgr gfrkgope gnlerçg leçr ngrejhger bulacha fklew jrgirwel fjgslçkjfgr gfrkgope gnlerçg leçr ngrejhger bulacha fklew jrgirwel fjgslçkjfgr gfrkgope gnlerçg leçr ngrejhger bulacha fklew jrgirwel"),
              Row(
                children: <Widget>[
                  Expanded(child: Container()),
                  FloatingActionButton.extended(
                    heroTag: "0",

                    onPressed: () async {
                      Navigator.pushNamed(context, "ListDeCards",
                          arguments: {});
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    // icon: Icon(
                    //   Icons.add,
                    //   size: 15,
                    // ),
                    label: Text(
                      'Doenças',
                      style: TextStyle(fontSize: 15),
                    ),
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.green,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  FloatingActionButton.extended(
                    heroTag: "1",
                    onPressed: () async {
                      Navigator.pushNamed(context, "ListDeCards",
                          arguments: {});
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    // icon: Icon(
                    //   Icons.add,
                    //   size: 15,
                    // ),
                    label: Text(
                      'Pragas',
                      style: TextStyle(fontSize: 15),
                    ),
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.green,
                  ),
                  Expanded(child: Container()),
                ],
              ),
            ]),
      ),
    );
  }
}
