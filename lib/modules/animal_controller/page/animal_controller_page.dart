import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get_it/get_it.dart';
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

  @override
  void initState() {
    super.initState();
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
            borderRadius: BorderRadius.all(Radius.circular(15))),
        icon: Icon(
          Icons.add,
          size: 30,
        ),
        label: Text(
          'Adicionar \nAnimal',
          style: TextStyle(fontSize: 15),
        ),
        foregroundColor: Colors.white,
        backgroundColor: Colors.orangeAccent,
      ),
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.green,
        title: Text(
          ' Animais',
          style: TextStyle(color: Colors.white),
        ),
        elevation: 5,
      ),
      body: SafeArea(
        child: FutureBuilder<List<TodoEntity>>(
          future: GetIt.I.get<AppDatabase>().todoRepositoryDao.getAll(),
          builder: (context, snapshot) {
            if (snapshot.data == null) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }

            return snapshot.data.isNotEmpty
                ? AnimationLimiter(
                    child: ListView.builder(
                      itemCount: snapshot.data.length,
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
                                              todo: snapshot.data[index]);
                                        },
                                      ),
                                    );
                                    if (result) {
                                      setState(() {});
                                    }
                                  },
                                  title: Text(snapshot.data[index].animal),
                                  subtitle: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                          'peso: ${snapshot.data[index].peso.substring(2)} Kg'),
                                      snapshot.data[index].idade.isNotEmpty
                                          ? Text(
                                              'Nascimento: ${snapshot.data[index].idade}')
                                          : Container(),
                                      snapshot.data[index].descricao.isNotEmpty
                                          ? Text(
                                              'Descrição: ${snapshot.data[index].descricao}')
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
                  )
                : Center(
                    child: Text('Não há anotações...'),
                  );
          },
        ),
      ),
    );
  }
}
