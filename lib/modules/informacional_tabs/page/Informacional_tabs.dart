//tesye
import 'package:flutter/material.dart';
import 'package:sgaapp/components/my_text_field_widget.dart';
import 'package:sgaapp/components/sub_cards.dart';

class InformacionalTabs extends StatefulWidget {
  final Map argumentos;

  const InformacionalTabs({Key key, this.argumentos}) : super(key: key);
  @override
  _InformacionalTabsState createState() => _InformacionalTabsState();
}

class _InformacionalTabsState extends State<InformacionalTabs> {
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
      itemCount: 10,
      itemBuilder: (context, index) {
        return SubCard();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () => Navigator.pop(context)),
          backgroundColor: Colors.transparent,
          elevation: 0,
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                child: Text("Pragas"),
              ),
              Tab(
                child: Text("Doenças"),
              ),
              Tab(
                child: Text("Daninhas"),
              )
            ],
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
                child: TabBarView(children: <Widget>[
                  createGrid(
                    context,
                    [],
                  ),
                  createGrid(
                    context,
                    [],
                  ),
                  createGrid(
                    context,
                    [],
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
