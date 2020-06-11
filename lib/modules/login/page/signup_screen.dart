import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:sgaapp/models/user_model.dart';
import 'dart:async';

import 'package:sgaapp/modules/main_screen/home_screen.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _nameController = TextEditingController();

  final _cpfController = TextEditingController();

  final _infoController = TextEditingController();

  final _phoneController = TextEditingController();

  final _cepController = TextEditingController();

  final _passController = TextEditingController();

  final _ufController = TextEditingController();

  final _emailController = TextEditingController();

  final _cidadeController = TextEditingController();

  //final _addressController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        body:
            ScopedModelDescendant<UserModel>(builder: (context, child, model) {
          if (model.isLoading)
            return Center(
              child: CircularProgressIndicator(),
            );

          return Form(
            key: _formKey,
            child: ListView(
              padding: EdgeInsets.all(16.0),
              children: <Widget>[
                Image(image: AssetImage('assets/bee.png')),
                SizedBox(height: 16.0),
                TextFormField(
                  controller: _nameController,
                  decoration: InputDecoration(hintText: "Nome"),
                  validator: (text) {
                    if (text.isEmpty) return "Nome Inválido!";
                    return null;
                  },
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(hintText: "Email"),
                  keyboardType: TextInputType.emailAddress,
                  validator: (text) {
                    if (text.isEmpty || !text.contains("@"))
                      return "E-mail Inválido!";
                    return null;
                  },
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  controller: _cpfController,
                  decoration: InputDecoration(hintText: "Cpf"),
                  validator: (text) {
                    if (text.isEmpty || text.length < 8) return "Cpf Inválido!";
                    return null;
                  },
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  controller: _passController,
                  decoration: InputDecoration(hintText: "Senha"),
                  obscureText: true,
                  validator: (text) {
                    if (text.isEmpty || text.length < 6)
                      return "Senha Inválida!";
                    return null;
                  },
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  controller: _phoneController,
                  decoration: InputDecoration(hintText: "Telefone"),
                  validator: (text) {
                    if (text.isEmpty || text.length < 6)
                      return "Telefone Inválido!";
                    return null;
                  },
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  controller: _infoController,
                  decoration: InputDecoration(hintText: "Você é um"),
                  validator: (text) {
                    if (text.isEmpty) return "campo Inválido!";
                    return null;
                  },
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  controller: _cepController,
                  decoration: InputDecoration(hintText: "CEP"),
                  validator: (text) {
                    if (text.isEmpty || text.length < 8) return "CEP Inválido!";
                    return null;
                  },
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  controller: _ufController,
                  decoration: InputDecoration(hintText: "UF"),
                  validator: (text) {
                    if (text.isEmpty || text.length < 2) return "UF Inválido!";
                    return null;
                  },
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  controller: _cidadeController,
                  decoration: InputDecoration(hintText: "Cidade"),
                  validator: (text) {
                    if (text.isEmpty || text.length < 2)
                      return "Cidade Inválido!";
                    return null;
                  },
                ),
                SizedBox(height: 30.0),
                SizedBox(
                  height: 44.0,
                  child: RaisedButton(
                    elevation: 6.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    child: Text(
                      "Criar Conta",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    textColor: Colors.white,
                    color: Color(0xFFE59730),
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        Map<String, dynamic> userData = {
                          "name": _nameController.text,
                          "email": _emailController.text,
                          "cpf": _cpfController.text,
                          "telefone": _phoneController.text,
                          "você é um": _infoController.text,
                          "cep": _cepController.text,
                          "uf": _ufController.text,
                          "cidade": _cidadeController.text,
                        };

                        model.signUp(
                            userData: userData,
                            pass: _passController.text,
                            onSuccess: _onSuccess,
                            onFail: _onFail);
                      }
                    },
                  ),
                ),
                SizedBox(height: 30.0),
              ],
            ),
          );
        }));
  }

  void _onSuccess() {
    _scaffoldKey.currentState.showSnackBar(SnackBar(
      content: Text("Usuário criado com sucesso!"),
      backgroundColor: Theme.of(context).primaryColor,
      duration: Duration(seconds: 2),
    ));
    Future.delayed(Duration(seconds: 2)).then((_) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    });
  }

  void _onFail() {
    _scaffoldKey.currentState.showSnackBar(SnackBar(
      content: Text("Falha ao criar usuário!"),
      backgroundColor: Colors.redAccent,
      duration: Duration(seconds: 2),
    ));
  }
}
