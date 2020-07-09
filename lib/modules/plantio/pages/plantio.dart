//tesye
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:sgaapp/components/my_text_field_widget.dart';
import 'package:sgaapp/components/sub_cards.dart';
import 'package:sgaapp/data/data_file.dart';
import 'package:sgaapp/modules/plantio/mock/mock_plantio.dart';
import 'package:sgaapp/modules/plantio/model/plantio_model.dart';

class Plantio extends StatefulWidget {
  final ListCardsModel model = MockListTabs.listMock;

  @override
  _PlantioState createState() => _PlantioState();
}

class _PlantioState extends State<Plantio> {
  var controller = TextEditingController();
  List filtrar;
  Widget createGrid(BuildContext context, List<SubCard> lista) {
    return AnimationLimiter(
      child: Scrollbar(
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
      ),
    );
  }

  @override
  void initState() {
    filtrar = widget.model.listSubCards;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            MyTextFieldWidget(
              withSeach: true,
              withPadding: true,
              keyboardType: TextInputType.text,
              hintText: "Pesquise aqui",
              controller: controller,
              onChanged: (value) {
                filtrar = widget.model.listSubCards.where((element) {
                  return element.titulo
                      .toLowerCase()
                      .contains(value.toLowerCase());
                }).toList();
                setState(() {
                  
                });
              },
            ),
            Expanded(child: createGrid(context, filtrar)),
          ],
        ),
      ),
    );
  }
}
