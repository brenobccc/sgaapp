import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:sgaapp/components/my_text_field_widget.dart';
import 'package:sgaapp/db/database.dart';
import 'package:sgaapp/entitys/todo_entity.dart';

import 'add_animal.dart';

class AnimalControllerPage extends StatefulWidget {
  const AnimalControllerPage({Key key}) : super(key: key);

  @override
  _AnimalControllerPageState createState() => _AnimalControllerPageState();
}

class _AnimalControllerPageState extends State<AnimalControllerPage> {
  AppDatabase db;
  List<TodoEntity> filter;
  List<TodoEntity> origin;
  TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
    db = GetIt.I.get<AppDatabase>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          var result = await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return AddAnimal();
              },
            ),
          );
          if (result) {
            setState(() {});
          }
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        icon: SvgPicture.asset(
          "assets/icones/icone_sinaldeadicionar.svg",
          height: 30,
        ),
        label: Text(
          'Adicionar',
          style: TextStyle(fontSize: 15),
        ),
        foregroundColor: Colors.white,
        backgroundColor: Color.fromRGBO(245, 207, 79, 1),
      ),
      // appBar: AppBar(
      //   automaticallyImplyLeading: true,
      //   backgroundColor: Colors.green,
      //   title: Text(
      //     ' Animais',
      //     style: TextStyle(color: Colors.white),
      //   ),
      //   elevation: 5,
      // ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            MyTextFieldWidget(
              withSeach: true,
              withPadding: true,
              keyboardType: TextInputType.text,
              hintText: "Pesquise aqui",
              controller: controller,
              onChanged: (text) {
                setState(() {
                  filter = origin.where((element) {
                    return element.animal
                        .toLowerCase()
                        .contains(controller.text.toLowerCase());
                  }).toList();
                });
              },
            ),
            Expanded(
              child: FutureBuilder<List<TodoEntity>>(
                future: GetIt.I.get<AppDatabase>().todoRepositoryDao.getAll(),
                builder: (context, snapshot) {
                  if (snapshot.data == null) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }

                  filter = origin = snapshot.data.where((element) {
                    return element.animal
                        .toLowerCase()
                        .contains(controller.text.toLowerCase());
                  }).toList();

                  filter.sort((a, b) {
                    return a.animal
                        .toLowerCase()
                        .compareTo(b.animal.toLowerCase());
                  });

                  return snapshot.data.isNotEmpty
                      ? AnimationLimiter(
                          child: Scrollbar(
                            child: ListView.builder(
                              physics: BouncingScrollPhysics(),
                              itemCount: filter.length,
                              itemBuilder: (context, index) {
                                return AnimationConfiguration.staggeredList(
                                  position: index,
                                  duration: const Duration(milliseconds: 375),
                                  child: SlideAnimation(
                                    verticalOffset: 50.0,
                                    child: ScaleAnimation(
                                      child: Card(
                                        child: ListTile(
                                          onTap: () async {
                                            var result = await Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) {
                                                  return AddAnimal(
                                                      todo: filter[index]);
                                                },
                                              ),
                                            );
                                            if (result) {
                                              setState(() {});
                                            }
                                          },
                                          title: Text(filter[index].animal),
                                          subtitle: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                  'peso: ${filter[index].peso.substring(2)} Kg'),
                                              filter[index].idade.isNotEmpty
                                                  ? Text(
                                                      'Nascimento: ${filter[index].idade}')
                                                  : Container(),
                                              filter[index].descricao.isNotEmpty
                                                  ? Text(
                                                      'Descrição: ${filter[index].descricao}')
                                                  : Container(),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        )
                      : Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SvgPicture.asset(
                                "assets/icones/icone_pontodeexclamaçao.svg",
                                height: 35,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Não há animais cadastrados!',
                                style: TextStyle(
                                  color: Color.fromRGBO(195, 197, 198, 1),
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ],
                          ),
                        );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
