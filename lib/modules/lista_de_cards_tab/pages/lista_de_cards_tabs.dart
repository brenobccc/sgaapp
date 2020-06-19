//tesye
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:sgaapp/components/my_text_field_widget.dart';
import 'package:sgaapp/components/sub_cards.dart';
import 'package:sgaapp/modules/lista_de_cards_tab/mock/mock_list_tabs.dart';
import '../model/lista_de_cards_tab_model.dart';

class ListDeCarsTabs extends StatefulWidget {
  final Map argumentos;
  final List<ListCardsTabModel> model = MockListTabs.listMock;

  ListDeCarsTabs({
    Key key,
    this.argumentos,
    // this.model = MockListTabs.listMock,
  }) : super(key: key);
  @override
  _ListDeCarsTabsState createState() => _ListDeCarsTabsState();
}

class _ListDeCarsTabsState extends State<ListDeCarsTabs> {
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
    return DefaultTabController(
      length: widget.model.length,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () => Navigator.pop(context)),
          backgroundColor: Colors.transparent,
          elevation: 0,
          bottom: TabBar(
            tabs: widget.model.map((e) => Text(e.title)).toList(),
          ),
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
                child: TabBarView(
                  physics: BouncingScrollPhysics(),
                  children: widget.model.map((e) {
                    return createGrid(
                      context,
                      e.listSubCards,
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
