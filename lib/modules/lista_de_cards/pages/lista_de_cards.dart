//tesye
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:sgaapp/components/my_text_field_widget.dart';
import 'package:sgaapp/components/sub_cards.dart';

class ListDeCards extends StatefulWidget {
  final dynamic argumentos;

  const ListDeCards({Key key, this.argumentos}) : super(key: key);
  @override
  _ListDeCardsState createState() => _ListDeCardsState();
}

class _ListDeCardsState extends State<ListDeCards> {
  var controller = TextEditingController();
  List filtrar;

  Widget createGrid(BuildContext context, List lista) {
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
                child: ScaleAnimation(child: lista[index]),
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  void initState() {
    filtrar = widget.argumentos;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
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
              controller: controller,
              onChanged: (value) {
                print(value);

                filtrar = (widget.argumentos as List).where((element) {
                  return element.titulo
                      .toLowerCase()
                      .contains(value.toLowerCase());
                }).toList();

                print(filtrar);
                setState(() {});
              },
            ),
            Expanded(
              child: createGrid(context, filtrar),
            ),
          ],
        ),
      ),
    );
  }
}
