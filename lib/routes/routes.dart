import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:sgaapp/components/tela_de_erro.dart';
import 'package:sgaapp/modules/animal_controller/page/add_animal.dart';
import 'package:sgaapp/modules/animal_controller/page/animal_controller_page.dart';
import 'package:sgaapp/modules/apicultura/page/apicultura.dart';
import 'package:sgaapp/modules/content/page/content.dart';
import 'package:sgaapp/modules/conteudo_plantio/page/conteudo_plantio.dart';
import 'package:sgaapp/modules/home/page/home_page.dart';

import 'package:sgaapp/modules/lista_de_cards/agronomia/plantios/algodao/menu_algodao.dart';
import 'package:sgaapp/modules/lista_de_cards/agronomia/plantios/amendoim/menu_amendoim.dart';
import 'package:sgaapp/modules/lista_de_cards/pages/lista_de_cards.dart';
import 'package:sgaapp/modules/login/page/login_screen.dart';
import 'package:sgaapp/modules/main_screen/page/home_screen.dart';
import 'package:sgaapp/modules/plantio/pages/plantio.dart';
import '../db/database.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final AppDatabase db = GetIt.I.get<AppDatabase>();
    final args = settings.arguments;

    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)
        animationRota() {
      return (context, animation, secondaryAnimation, child) {
        var begin = Offset(0.0, 1.0);
        var end = Offset.zero;
        var curve = Curves.ease;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      };
    }

    final Map<String, dynamic> routes = {
      '/HomePage':
          //MaterialPageRoute(builder: (_) => LoginScreen(db: db)),
          PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) =>
                  LoginScreen(db: db),
              transitionsBuilder: animationRota()),
      '/HomePagePrincipal':
          //MaterialPageRoute(builder: (_) => HomeScreen(db: db)),
          PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) =>
                  HomeScreen(db: db),
              transitionsBuilder: animationRota()),
      'ListDeCards':
          // MaterialPageRoute(builder: (_) => ListDeCards(argumentos: args)),
          PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) =>
                  ListDeCards(argumentos: args),
              transitionsBuilder: animationRota()),
      'AnimalControll':
          //MaterialPageRoute(builder: (_) => AnimalControllerPage()),
          PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) =>
                  AnimalControllerPage(),
              transitionsBuilder: animationRota()),
      'Plantio':
          // MaterialPageRoute(builder: (_) => ListDeCarsTabs(argumentos: args)),
          PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) =>
                  Plantio(),
              transitionsBuilder: animationRota()),
      'Apicultura':
          //MaterialPageRoute(builder: (_) => ApiculturaPage()),
          PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) =>
                  ApiculturaPage(),
              transitionsBuilder: animationRota()),
      'home':
          //MaterialPageRoute(builder: (_) => HomePage()),
          PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) =>
                  HomePage(),
              transitionsBuilder: animationRota()),
      'Content':
          // MaterialPageRoute(builder: (_) => Content()),
          PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) =>
                  Content(),
              transitionsBuilder: animationRota()),
      'Algodao_menu':
          //MaterialPageRoute(builder: (_) => AlgodaoMenu()),
          PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) =>
                  AlgodaoMenu(),
              transitionsBuilder: animationRota()),
      'Amendoim_Menu':
          //MaterialPageRoute(builder: (_) => AmendoimMenu()),
          PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) =>
                  AmendoimMenu(),
              transitionsBuilder: animationRota()),
      'addanimal':
          // MaterialPageRoute(
          //   builder: (_) => AddAnimal(todo: args))
          PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) =>
                  AddAnimal(todo: args),
              transitionsBuilder: animationRota()),
      'ConteudoPlantio':
          //MaterialPageRoute(builder: (_) => InformacionalTabs()),
          PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) =>
                  ConteudoPlantio(),
              transitionsBuilder: animationRota()),
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
