//tesye
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:sgaapp/components/my_text_field_widget.dart';
import 'package:sgaapp/components/sub_cards.dart';
import 'package:sgaapp/modules/informacional_tabs/components/tela_de_informacoes_widget.dart';

class InformacionalTabs extends StatefulWidget {
  final Map argumentos;
  final String plantio;

  const InformacionalTabs({
    Key key,
    this.argumentos,
    this.plantio = 'teste',
  }) : super(key: key);
  @override
  _InformacionalTabsState createState() => _InformacionalTabsState();
}

class _InformacionalTabsState extends State<InformacionalTabs>
    with SingleTickerProviderStateMixin {
  var controller = TextEditingController();
  TabController tabController;

  @override
  initState() {
    super.initState();
    tabController = TabController(
      length: 4,
      vsync: this,
      initialIndex: 0,
    );

    tabController.addListener(() {
      setState(() {});
    });
  }

  dispose() {
    super.dispose();
    tabController.dispose();
  }

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
        itemCount: 10,
        itemBuilder: (context, index) {
          return AnimationConfiguration.staggeredList(
            position: index,
            duration: const Duration(milliseconds: 375),
            child: SlideAnimation(
              verticalOffset: 50.0,
              child: FadeInAnimation(
                child: SubCard(),
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
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () => Navigator.pop(context)),
          backgroundColor: Colors.transparent,
          elevation: 0,
          bottom: TabBar(
            controller: tabController,
            tabs: <Widget>[
              Tab(
                child: Text(widget.plantio),
              ),
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
              if (tabController.index != 0)
                MyTextFieldWidget(
                  withPadding: true,
                  keyboardType: TextInputType.text,
                  hintText: "Pesquise aqui",
                ),
              Expanded(
                child: TabBarView(
                  controller: tabController,
                  children: <Widget>[
                    TelaDeInfoWidget(
                      conteudo:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed aliquet efficitur ante at sagittis. Quisque venenatis velit ac augue mattis tristique imperdiet scelerisque est. Aenean consectetur sapien sit amet est gravida, vitae fringilla purus vulputate. Mauris tincidunt ipsum vitae accumsan vestibulum. Maecenas sit amet magna sit amet justo bibendum pharetra in sit amet mauris. Curabitur vitae mauris vitae quam luctus laoreet ut eu lorem. Aliquam erat volutpat. Suspendisse posuere suscipit sag',
                    ),
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
