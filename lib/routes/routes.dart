import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:sgaapp/components/tela_de_erro.dart';
import 'package:sgaapp/modules/animal_controller/page/add_animal.dart';

import 'package:sgaapp/modules/content/page/content.dart';

import 'package:sgaapp/modules/home/page/home_page.dart';
import 'package:sgaapp/modules/lista_de_cards/lista_de_cards.dart';
import 'package:sgaapp/modules/lista_de_cards/plantio/plantio_teste.dart';
import 'package:sgaapp/modules/lista_de_cards_tab/lista_de_cards_tabs.dart';

import 'package:sgaapp/modules/login/page/login_screen.dart';
import 'package:sgaapp/modules/main_screen/home_screen.dart';
import '../db/database.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final AppDatabase db = GetIt.I.get<AppDatabase>();
    final args = settings.arguments;

    final Map<String, dynamic> routes = {
      '/HomePage': MaterialPageRoute(builder: (_) => LoginScreen(db: db)),
      '/HomePagePrincipal':
          MaterialPageRoute(builder: (_) => HomeScreen(db: db)),
      'ListDeCards':
          MaterialPageRoute(builder: (_) => ListDeCards(argumentos: args)),
      'ListDeCardsTabs':
          MaterialPageRoute(builder: (_) => ListDeCarsTabs(argumentos: args)),
      'home': MaterialPageRoute(builder: (_) => HomePage()),
      'Content': MaterialPageRoute(builder: (_) => Content()),
      'Algodao_menu': MaterialPageRoute(builder: (_) => Pragas_Algodao()),
      'addanimal': MaterialPageRoute(
          builder: (_) => AddAnimal(
                db: db,
                todo: args,
              )),
      'alertaErro': MaterialPageRoute(builder: (_) => TelaDeErro()),
    };

    if (routes.containsKey(settings.name)) {
      return routes[settings.name];
    } else {
      return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Text(
                'ERROR',
                //textScaleFactor: 0.98,
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
              Text(
                "Mensagem desenvolvedor:",
                //textScaleFactor: 0.98,
                style: TextStyle(fontSize: 12.0),
              ),
              Text(
                "Erro na rota",
                //textScaleFactor: 0.98,
                style: TextStyle(fontSize: 12.0),
              ),
            ],
          ),
        ),
      );
    });
  }
}
