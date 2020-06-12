import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sgaapp/db/database.dart';
import 'package:sgaapp/entitys/todo_entity.dart';

import 'package:sgaapp/modules/animal_controller/page/add_animal.dart';

class Teste extends StatefulWidget {
  const Teste({Key key, this.db}) : super(key: key);
  final AppDatabase db;

  @override
  _TesteState createState() => _TesteState();
}

class _TesteState extends State<Teste> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
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
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text('Minhas anotações'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: FutureBuilder<List<TodoEntity>>(
            future: widget.db.todoRepositoryDao.getAll(),
            builder: (context, snapshot) {
              return snapshot.hasData
                  ? ListView.builder(
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
                            title: Text(snapshot.data[index].animal),
                            subtitle: Text(snapshot.data[index].peso),
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
