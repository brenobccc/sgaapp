import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:get_it/get_it.dart';
import 'package:sgaapp/db/database.dart';
import 'package:sgaapp/entitys/todo_entity.dart';
import '../components/text_field_animal_controller_widget.dart';
import '../utils/my_text_format_data.dart';

class AddAnimal extends StatefulWidget {
  AddAnimal({Key key, this.todo}) : super(key: key);

  final TodoEntity todo;

  @override
  _AddAnimalState createState() => _AddAnimalState();
}

class _AddAnimalState extends State<AddAnimal> {
  // var _anotationController;
  MoneyMaskedTextController _pesoController;
  TextEditingController _animalController;
  TextEditingController _idadeController;
  TextEditingController _descController;
  bool verifyTextField = false;
  AppDatabase db;

  @override
  void initState() {
    db = GetIt.I.get<AppDatabase>();

    _animalController = TextEditingController(
        text: widget.todo != null ? widget.todo.animal : '');

    _idadeController = TextEditingController(
        text: widget.todo != null ? widget.todo.idade : '');

    _descController = TextEditingController(
        text: widget.todo != null ? widget.todo.descricao : '');

    //Máscara para o peso
    _pesoController = MoneyMaskedTextController(
      decimalSeparator: ',',
      thousandSeparator: '.',
      leftSymbol: 'Kg ',
    );

    //Valor inicial para o peso
    if (widget.todo != null) {
      _pesoController.text = widget.todo.peso;
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: saveButtom,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30))),
        icon: Icon(
          Icons.save,
          size: 30,
          color: Colors.white,
        ),
        label: Text(
          'Salvar',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        foregroundColor: Colors.white,
        backgroundColor: Color(0xFFf5cf4f),
      ),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(245, 207, 79, 1),
        title: Text(
          "Adicionar Animal",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
          onPressed: () { 
            Navigator.pop(context, false);
          },
        ),
        actions: <Widget>[
          widget.todo != null
              ? IconButton(
                  color: Colors.white,
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
              maxLength: 80,
              errorText: verifyTextFieldFun(_animalController),
              controller: _animalController,
              hintText: 'Nome...',
              title: 'Animal',
            ),
            SizedBox(
              height: 15,
            ),
            MyTextFieldAnimalControllerWidget(
              errorText: verifyTextFieldFun(_pesoController),
              controller: _pesoController,
              title: 'Peso',
              keyboardType: TextInputType.number,
            ),
            SizedBox(
              height: 15,
            ),
            MyTextFieldAnimalControllerWidget(
              showLength: false,
              maxLength: 10,
              controller: _idadeController,
              hintText: 'dd/mm/aaaa...',
              title: 'Data de nascimento',
              keyboardType: TextInputType.number,
              // onChanged: formatDataNasc,
              inputFormatters: [
                WhitelistingTextInputFormatter.digitsOnly,
                MyTextInputFormatterData(),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            MyTextFieldAnimalControllerWidget(
              maxLength: 180,
              maxLines: null,
              controller: _descController,
              hintText: 'Descrição...',
              title: 'Descrição',
            ),
          ],
        ),
      ),
    );
  }

  String verifyTextFieldFun(TextEditingController editingController) {
    if (verifyTextField) {
      if (editingController.text.isEmpty ||
          editingController.text == 'Kg 0,00') {
        return 'Campo obrigatório';
      }
    }
    return null;
  }

  //De Data de nascimento para a class DateTime.
  //Caso queira usar para algo.
  //Por enquanto nao esta sendo usado
  DateTime dataNascToDateTime(String data) {
    var dataSplit = data.split('/');
    var year = int.parse(dataSplit[2]);
    var month = int.parse(dataSplit[1]);
    var day = int.parse(dataSplit[0]);

    return DateTime(year, month, day);
  }

  void saveButtom() {
    if (_animalController.text.isNotEmpty &&
        _pesoController.text.isNotEmpty &&
        _pesoController.text != 'Kg 0,00') {
      var todo = TodoEntity(
        id: widget.todo != null ? widget.todo.id : null,
        peso: _pesoController.text,
        animal: _animalController.text,
        idade: _idadeController.text,
        descricao: _descController.text,
        createdAt: DateTime.now().toUtc().toString(),
      );
      if (widget.todo != null) {
        db.todoRepositoryDao.updateItem(todo);
      } else {
        db.todoRepositoryDao.insertItem(todo);
      }

      Navigator.pop(context, true);
    } else {
      setState(() {
        verifyTextField = true;
      });
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
                db.todoRepositoryDao.deleteItem(widget.todo);
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

// void formatDataNasc(String data) {
//   if (data.length > 8) {
//     return;
//   }

//   print('offset: ${_idadeController.value.selection.baseOffset}');
//   print('extent: ${_idadeController.value.selection.extentOffset}');

//   if (data.length > 2) {
//     var list = data.split('');
//     list.insert(2, '/');
//     data = list.reduce((value, element) => value + element);
//   }

//   if (data.length > 5) {
//     var list = data.split('');
//     list.insert(5, '/');
//     data = list.reduce((value, element) => value + element);
//   }
// }
