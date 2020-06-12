import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sgaapp/db/database.dart';
import 'package:sgaapp/entitys/todo_entity.dart';

import 'add_animal.dart';

class AnimalControllerPage extends StatefulWidget {
  const AnimalControllerPage({Key key, this.db}) : super(key: key);
  final AppDatabase db;

  @override
  _AnimalControllerPageState createState() => _AnimalControllerPageState();
}

class _AnimalControllerPageState extends State<AnimalControllerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          var result = await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return AddAnimal(db: widget.db);
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
        automaticallyImplyLeading: false,
        backgroundColor: Colors.green,
        title: Text(
          ' Animais',
          style: TextStyle(color: Colors.white),
        ),
        elevation: 5,
      ),
      body: SafeArea(
        child: FutureBuilder<List<TodoEntity>>(
            future: widget.db.todoRepositoryDao.getAll(),
            builder: (context, snapshot) {
              return snapshot.hasData?
                  // ? GridView.builder(
                  //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  //       crossAxisCount: 2,
                  //       mainAxisSpacing: 25.0,
                  //       crossAxisSpacing: 25.0,
                  //       childAspectRatio: 0.8,
                  //     ),
                  //     padding:
                  //         EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  //     itemCount: snapshot.data.length,
                  //     itemBuilder: (context, index) {
                  //       return Cards(
                  //         descricao: snapshot.data[index].title,
                  //         onPressed: () async {
                  //           var result = await Navigator.push(
                  //             context,
                  //             MaterialPageRoute(
                  //               builder: (context) {
                  //                 return AddAnimal(
                  //                     db: widget.db,
                  //                     todo: snapshot.data[index]);
                  //               },
                  //             ),
                  //           );
                  //           if (result) {
                  //             setState(() {});
                  //           }
                  //         },
                  //       );
                  //     },
                  //   )
                   ListView.builder(
                      itemCount: snapshot.data.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: ListTile(
                            onTap: () async {
                              var result = await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return AddAnimal(
                                        db: widget.db,
                                        todo: snapshot.data[index]);
                                  },
                                ),
                              );
                              if (result) {
                                setState(() {});
                              }
                            },
                            title: Text(snapshot.data[index].title),
                            subtitle: Text(snapshot.data[index].anotation),
                          ),
                        );
                      },
                    )
                  : Center(
                      child: Text('Não há anotações...'),
                    );
            }),
      ),
    );
  }
}
