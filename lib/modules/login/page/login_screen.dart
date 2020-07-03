import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:sgaapp/db/database.dart';
import 'package:sgaapp/models/user_model.dart';
import 'package:sgaapp/modules/main_screen/page/home_screen.dart';
import 'package:sgaapp/modules/menu_principal/menu_principal.dart';
import 'package:sgaapp/modules/plantio/pages/plantio.dart';

import 'signup_screen.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key, this.db}) : super(key: key);
  final AppDatabase db;
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();

  final _passController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  bool _showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: ScopedModelDescendant<UserModel>(builder: (context, child, model) {
        if (model.isLoading)
          return Center(
            child: CircularProgressIndicator(),
          );

        return Form(
          key: _formKey,
          child: ListView(
            padding: EdgeInsets.all(16.0),
            children: <Widget>[
              Image(
                image: AssetImage('assets/logo_login.png'),
              ),
              TextFormField(
                style: TextStyle(color: Colors.black),
                controller: _emailController,
                decoration: InputDecoration(
                  icon: Icon(Icons.email),
                  hintText: "Email",
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (text) {
                  if (text.isEmpty || !text.contains("@"))
                    return "E-mail Inválido!";
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _passController,
                decoration: InputDecoration(
                    icon: Icon(Icons.lock),
                    hintText: "Senha",
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    suffixIcon: GestureDetector(
                      child: Icon(_showPassword == false
                          ? Icons.visibility_off
                          : Icons.visibility),
                      onTap: () {
                        setState(() {
                          _showPassword = !_showPassword;
                        });
                      },
                    )),
                obscureText: _showPassword == false ? true : false,
                validator: (text) {
                  if (text.isEmpty || text.length < 6) return "Senha Inválida!";
                  return null;
                },
              ),
              Align(
                alignment: Alignment.centerRight,
                child: FlatButton(
                  onPressed: () {
                    if (_emailController.text.isEmpty)
                      _scaffoldKey.currentState.showSnackBar(SnackBar(
                        content: Text("Insira seu e-mail para recuperação!"),
                        backgroundColor: Colors.redAccent,
                        duration: Duration(seconds: 3),
                      ));
                    else {
                      model.recoverPass(_emailController.text);
                      _scaffoldKey.currentState.showSnackBar(SnackBar(
                        content: Text("Confira seu e-mail!"),
                        backgroundColor: Theme.of(context).primaryColor,
                        duration: Duration(seconds: 4),
                      ));
                    }
                  },
                  child: Text(
                    "Esqueci minha senha",
                    textAlign: TextAlign.right,
                  ),
                  padding: EdgeInsets.zero,
                ),
              ),
              SizedBox(height: 16.0),

              //LEMBRA DE REMOVERRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR
              InkWell(
                onLongPress: () {
                  Navigator.pushNamed(context, "MenuPrincpal",
                      arguments: GetIt.I.get<AppDatabase>());
                },
                child: SizedBox(
                  height: 44.0,
                  child: RaisedButton(
                    elevation: 6.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    child: Text(
                      "Entrar",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    textColor: Colors.white,
                    color: Color(0xFFFACF48),
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        model.signIn(
                          email: _emailController.text,
                          pass: _passController.text,
                          onSuccess: _onSuccess,
                          onFail: _onFail,
                        );
                      }
                    },
                  ),
                ),
              ),
              SizedBox(height: 30.0),
              SizedBox(
                height: 44.0,
                child: RaisedButton(
                  child: Text(
                    "Cadastre-se",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  elevation: 6.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  textColor: Colors.white,
                  color: Color(0xFFFACF48),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SignUpScreen()));
                  },
                ),
              ),
            ],
          ),
        );
      }),
    );
  }

  void _onSuccess() {
    //Navigator.of(context).pop();
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => MenuPrincpal()));
  }

  void _onFail() {
    _scaffoldKey.currentState.showSnackBar(SnackBar(
      content: Text("Falha ao Entrar!"),
      backgroundColor: Colors.redAccent,
      duration: Duration(seconds: 2),
    ));
  }
}
