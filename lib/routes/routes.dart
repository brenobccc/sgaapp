import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:sgaapp/components/tela_de_erro.dart';

import 'package:sgaapp/modules/content/page/content.dart';
import 'package:sgaapp/modules/home/page/home_page.dart';
import 'package:sgaapp/modules/lista_de_cards/ScrenCards.dart';

import 'package:sgaapp/modules/login/page/login_screen.dart';
import 'package:sgaapp/modules/main_screen/home_screen.dart';

import '../db/database.dart';

final AppDatabase db = GetIt.I.get<AppDatabase>();

Map<String, WidgetBuilder> routers = {
  '/HomePage': (BuildContext context) => LoginScreen(db: db),
  '/HomePagePrincipal': (BuildContext context) => HomeScreen(db: db),
  'screenCards': (BuildContext context) => ScreenCards(),
  'home': (BuildContext context) => HomePage(),
  'Content': (BuildContext context) => Content(),
  'alertaErro': (BuildContext context) => TelaDeErro()
};
