import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:sgaapp/components/my_text_field_widget.dart';
import 'package:sgaapp/components/poligono.dart';

class ApiculturaPage extends StatelessWidget {
  createGrid(BuildContext context, List lista) {
    return AnimationLimiter(
      child: GridView.builder(
        physics: BouncingScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 25.0,
          crossAxisSpacing: 25.0,
          childAspectRatio: 0.8,
        ),
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        itemCount:  10,
        itemBuilder: (context, index) {
          return AnimationConfiguration.staggeredList(
            position: index,
            duration: const Duration(milliseconds: 375),
            child: SlideAnimation(
              verticalOffset: 50.0,
              child: FadeInAnimation(
                child: Poligono(heroTag: index.toString()),
              ),
            ),
          );
        },
      ),
    );
  }

  // );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () => Navigator.pop(context)),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            MyTextFieldWidget(
              withPadding: true,
              keyboardType: TextInputType.text,
              hintText: "Pesquise aqui",
            ),
            Expanded(child: createGrid(context, [])),
          ],
        ),
      ),
    );

    // Stack(
    //   children: <Widget>[
    //     GridView.count(
    //       primary: false,
    //       padding: const EdgeInsets.all(20),
    //       crossAxisSpacing: 10,
    //       mainAxisSpacing: 4,
    //       crossAxisCount: 2,
    //       children: <Widget>[
    //         Container(
    //             child: ConstrainedBox(
    //                 constraints: BoxConstraints.expand(),
    //                 child: FlatButton(
    //                   onPressed: () {},
    //                   child: Image.asset('assets/map.png'),
    //                   color: Colors.transparent,
    //                 ))),
    //         Container(
    //             child: ConstrainedBox(
    //                 constraints: BoxConstraints.expand(),
    //                 child: FlatButton(
    //                   onPressed: () {},
    //                   child: Image.asset('assets/col.png'),
    //                   color: Colors.transparent,
    //                 ))),
    //         Container(
    //             child: ConstrainedBox(
    //                 constraints: BoxConstraints.expand(),
    //                 child: FlatButton(
    //                   onPressed: () {},
    //                   child: Image.asset('assets/pro.png'),
    //                   color: Colors.transparent,
    //                 ))),
    //         Container(
    //             child: ConstrainedBox(
    //                 constraints: BoxConstraints.expand(),
    //                 child: FlatButton(
    //                   onPressed: () {},
    //                   child: Image.asset('assets/quest.png'),
    //                   color: Colors.transparent,
    //                 ))),
    //         Container(
    //             child: ConstrainedBox(
    //                 constraints: BoxConstraints.expand(),
    //                 child: FlatButton(
    //                   onPressed: () {},
    //                   child: Image.asset('assets/colm.png'),
    //                   color: Colors.transparent,
    //                 ))),
    //         Container(
    //             child: ConstrainedBox(
    //                 constraints: BoxConstraints.expand(),
    //                 child: FlatButton(
    //                   onPressed: () {},
    //                   child: Image.asset('assets/prod.png'),
    //                   color: Colors.transparent,
    //                 ))),
    //         Container(
    //             child: ConstrainedBox(
    //                 constraints: BoxConstraints.expand(),
    //                 child: FlatButton(
    //                   onPressed: () {},
    //                   child: Image.asset('assets/grup.png'),
    //                   color: Colors.transparent,
    //                 ))),
    //       ],
    //     )
    //   ],
    // ),
    // );
  }
}
