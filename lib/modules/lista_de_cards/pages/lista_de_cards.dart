//tesye
import 'package:flutter/material.dart';
import 'package:sgaapp/components/my_text_field_widget.dart';
import 'package:sgaapp/components/sub_cards.dart';

class ListDeCards extends StatefulWidget {
  final Map argumentos;

  const ListDeCards({Key key, this.argumentos}) : super(key: key);
  @override
  _ListDeCardsState createState() => _ListDeCardsState();
}

class _ListDeCardsState extends State<ListDeCards> {
  var controller = TextEditingController();

  createGrid(BuildContext context, List lista) {
    return GridView.builder(
      physics: BouncingScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 25.0,
        crossAxisSpacing: 25.0,
        childAspectRatio: 0.8,
      ),
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      itemCount: lista.length ?? 10,
      itemBuilder: (context, index) {
        return lista[index] ?? SubCard();
      },
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
            Expanded(
              child: createGrid(
                context,
                widget.argumentos['listaCards'],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
