import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

import 'package:sgaapp/db/database.dart';
import 'package:sgaapp/entitys/todo_entity.dart';
import 'package:sgaapp/modules/animal_controller/page/components/text_field_animal_controller_widget.dart';

class AddAnimal extends StatefulWidget {
  AddAnimal({Key key, this.db, this.todo}) : super(key: key);
  final AppDatabase db;
  final TodoEntity todo;

  @override
  _AddAnimalState createState() => _AddAnimalState();
}

class _AddAnimalState extends State<AddAnimal> {
  var _titleController;
  // var _anotationController;
  MoneyMaskedTextController _pesoController;

  @override
  void initState() {
    _titleController = TextEditingController(
        text: widget.todo != null ? widget.todo.title : '');

    // _anotationController = TextEditingController(
    //     text: widget.todo != null ? widget.todo.anotation : '');

    //Máscara para o peso
    _pesoController = MoneyMaskedTextController(
      decimalSeparator: ',',
      thousandSeparator: '.',
      leftSymbol: 'Kg ',
    );

    //Valor inicial para o peso
    if (widget.todo != null) {
      _pesoController.text = widget.todo.anotation;
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: saveButtom,
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
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context, false);
          },
        ),
        actions: <Widget>[
          widget.todo != null
              ? IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: _showExclusionDialog,
                )
              : Container(),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(12),
        child: Column(
          children: <Widget>[
            MyTextFieldAnimalControllerWidget(
              controller: _titleController,
              hintText: 'Digite...',
              title: 'Animal',
            ),
            SizedBox(
              height: 15,
            ),
            MyTextFieldAnimalControllerWidget(
              controller: _pesoController,
              hintText: 'Digite...',
              title: 'Peso',
              keyboardType: TextInputType.number,
              // inputFormatters: <TextInputFormatter>[
              //   WhitelistingTextInputFormatter.digitsOnly,
              // ],
            ),
          ],
        ),
      ),
    );
  }

  void saveButtom() {
    if (_titleController.text.isNotEmpty &&
        _pesoController.text.isNotEmpty &&
        _pesoController.text != 'Kg 0,00') {
      var todo = TodoEntity(
        id: widget.todo != null ? widget.todo.id : null,
        anotation: _pesoController.text,
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
  }

  void _showExclusionDialog() {
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
                widget.db.todoRepositoryDao.deleteItem(widget.todo);
                Navigator.pop(context);
                Navigator.pop(context, true);
              },
              child: Text('Sim'),
            ),
          ],
        );
      },
    );
  }
}
