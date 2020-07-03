//tesye
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:sgaapp/components/my_text_field_widget.dart';
import 'package:sgaapp/components/sub_cards.dart';
import 'package:sgaapp/modules/plantio/mock/mock_plantio.dart';
import 'package:sgaapp/modules/plantio/model/plantio_model.dart';


class Plantio extends StatefulWidget {

  final ListCardsModel model = MockListTabs.listMock;

  @override
  _PlantioState createState() => _PlantioState();
}

class _PlantioState extends State<Plantio> {
  var controller = TextEditingController();

  Widget createGrid(BuildContext context, List<SubCard> lista) {
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
        itemCount: lista.length,
        itemBuilder: (context, index) {
          return AnimationConfiguration.staggeredList(
            position: index,
            duration: const Duration(milliseconds: 375),
            child: SlideAnimation(
              verticalOffset: 50.0,
              child: ScaleAnimation(
                child: lista[index],
              ),
            ),
          );
        },
      ),
    );
  }

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
            Expanded(child: createGrid(context, widget.model.listSubCards)),
          ],
        ),
      ),
    );
  }
}
