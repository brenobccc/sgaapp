import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:sgaapp/components/sub_cards.dart';
import 'package:sgaapp/components/tela_fundo.dart';

import 'package:sgaapp/modules/home/componets/card_home.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController controller;
  int indice = 0;

  List<Widget> _pages = [
    CardHome(titulo: "Agronomia", rota: "ListDeCardsTabs", args: {
      'listaCards': [
        {
          'titulo': 'Plantios',
          'lista': [
            SubCard(
              titulo: "Algodão",
              rota: 'InformacionalTabs',
              imagem: "assets/agronomia/algodao.png",
            ),
            SubCard(
              titulo: "Amendoim",
              rota: 'InformacionalTabs',
              imagem: "assets/agronomia/amendoin.png",
            ),
            SubCard(
              titulo: "Arroz",
              rota: 'InformacionalTabs',
              imagem: "assets/agronomia/arroz.png",
            ),
            SubCard(
              titulo: "Batata",
              rota: 'InformacionalTabs',
              imagem: "assets/agronomia/batata.png",
            ),
            SubCard(
              titulo: "Café",
              rota: 'InformacionalTabs',
              imagem: "assets/agronomia/cafe.png",
            ),
            SubCard(
              titulo: "Cana-de-Açucar",
              rota: 'InformacionalTabs',
              imagem: "assets/agronomia/cacuca.png",
            ),
            SubCard(
              titulo: "Feijão",
              rota: 'InformacionalTabs',
              imagem: "assets/agronomia/feijao.png",
            ),
            SubCard(
              titulo: "Milho",
              rota: 'InformacionalTabs',
              imagem: "assets/agronomia/milho.png",
            ),
            SubCard(
              titulo: "Soja",
              rota: 'InformacionalTabs',
              imagem: "assets/agronomia/algodao.png",
            ),
            SubCard(
              titulo: "Sorgo",
              rota: 'InformacionalTabs',
              imagem: "assets/agronomia/algodao.png",
            ),
            SubCard(
              titulo: "Tomate",
              rota: 'InformacionalTabs',
              imagem: "assets/agronomia/algodao.png",
            ),
            SubCard(
              titulo: "Trigo",
              rota: 'InformacionalTabs',
              imagem: "assets/agronomia/algodao.png",
            ),
            SubCard(
              titulo: "Uva",
              rota: 'InformacionalTabs',
              imagem: "assets/agronomia/algodao.png",
            ),
          ]
        },
        {
          'titulo': 'Equipamentos',
          'lista': [
            SubCard(
              titulo: "1",
              rota: 'Content',
            ),
            SubCard(
              titulo: "2",
              rota: 'Content',
            ),
            SubCard(
              titulo: "3",
              rota: 'Content',
            ),
            SubCard(
              titulo: "4",
              rota: 'Content',
            ),
            SubCard(
              titulo: "5",
              rota: 'Content',
            ),
          ]
        }
      ],
    }),
    CardHome(
      titulo: "Apicultura",
      rota: "Apicultura",
    ),
    CardHome(
      titulo: "Controle de Animais",
      rota: "AnimalControll",
    ),

    // CardHome(
    //   titulo: "Financeiro",
    //   rota: "ListDeCards",
    //   args: {
    //     'listaCards': [
    //       SubCard(),
    //       SubCard(),
    //       SubCard(),
    //     ]
    //   },
    // ),
  ];

  createGrid(BuildContext context, List lista) {
    return AspectRatio(
      aspectRatio: 1.3,
      child: AnimationLimiter(
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          controller: controller,
          itemCount: lista.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return AnimationConfiguration.staggeredList(
              position: index,
              duration: const Duration(milliseconds: 375),
              child: SlideAnimation(
                verticalOffset: 50.0,
                child: ScaleAnimation(
                  child: lista[index],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.grey[100],
      body: TelaDeFundo(
        //   indicador: indicadores(),
        tela: createGrid(context, _pages),
      ),
    );
  }
}
