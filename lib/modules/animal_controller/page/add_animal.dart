import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sgaapp/components/my_text_field_widget.dart';
import 'package:sgaapp/db/database.dart';
import 'package:sgaapp/entitys/todo_entity.dart';

class AddAnimal extends StatefulWidget {
  AddAnimal({Key key, this.db, this.todo}) : super(key: key);
  final AppDatabase db;
  final TodoEntity todo;

  @override
  _AddAnimalState createState() => _AddAnimalState();
}

class _AddAnimalState extends State<AddAnimal> {
  var _titleController;

  var _anotationController;

  @override
  void initState() {
    _titleController = TextEditingController(
        text: widget.todo != null ? widget.todo.title : '');

    _anotationController = TextEditingController(
        text: widget.todo != null ? widget.todo.anotation : '');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          if (_titleController.text.isNotEmpty &&
              _anotationController.text.isNotEmpty) {
            var todo = TodoEntity(
              id: widget.todo != null ? widget.todo.id : null,
              anotation: _anotationController.text,
              title: _titleController.text,
              createdAt: DateTime.now().toUtc().toString(),
            );
            if (widget.todo != null) {
              widget.db.todoRepositoryDao.updateItem(todo);
            } else {
              widget.db.todoRepositoryDao.insertItem(todo);
            }

            Navigator.pop(context, true);
          }
        },
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        icon: Icon(
          Icons.save,
          size: 30,
          color: Colors.white,
        ),
        label: Text(
          '  Salvar  ',
          style: TextStyle(fontSize: 15, color: Colors.white),
        ),
        foregroundColor: Colors.white,
        backgroundColor: Colors.orangeAccent,
      ),
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: TextField(
          controller: _titleController,
          cursorColor: Colors.white54,
          showCursor: true,
          style: Theme.of(context).textTheme.bodyText2,
          decoration: InputDecoration(
              hintText: 'Animal',
              border: InputBorder.none,
              hintStyle: Theme.of(context)
                  .textTheme
                  .bodyText2
                  .copyWith(color: Colors.white54)),
        ),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context, false);
          },
        ),
        actions: <Widget>[
          widget.todo != null
              ? IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (_) {
                        return AlertDialog(
                          content: Text('Tem centeza que deseja excluir?'),
                          actions: <Widget>[
                            FlatButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('Cancelar'),
                            ),
                            FlatButton(
                              onPressed: () {
                                widget.db.todoRepositoryDao
                                    .deleteItem(widget.todo);
                                Navigator.pop(context);
                                Navigator.pop(context, true);
                              },
                              child: Text('Sim'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                )
              : Container(),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(12),
        child: Column(
          children: <Widget>[
            MyTextFieldWidget(
              hintText: 'Digite...',
            ),
          ],
        ),
      ),
    );
  }
}
