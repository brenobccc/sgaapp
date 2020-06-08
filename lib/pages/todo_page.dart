import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sgaapp/db/database.dart';
import 'package:sgaapp/entitys/todo_entity.dart';

class TodoPage extends StatefulWidget {
  TodoPage({Key key, this.db, this.todo}) : super(key: key);
  final AppDatabase db;
  final TodoEntity todo;

  @override
  _TodoPageState createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
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
            borderRadius: BorderRadius.all(Radius.circular(15)    
            )),
        icon: Icon(
          Icons.save,
          size: 30,
          color: Colors.white,
        ),
        label: Text(
          '  Salvar  ',
          style: TextStyle(fontSize: 15,color: Colors.white),
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
          style: Theme.of(context).textTheme.headline,
          decoration: InputDecoration(
              hintText: 'Animal',
              border: InputBorder.none,
              hintStyle: Theme.of(context)
                  .textTheme
                  .headline
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
                    widget.db.todoRepositoryDao.deleteItem(widget.todo);
                    Navigator.pop(context, true);
                  },
                )
              : Container(),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _anotationController,
              decoration: InputDecoration(
                  hintText: 'Informações', border: InputBorder.none),
              maxLines: 8,
            ),
          ],
        ),
      ),
    );
  }
}
