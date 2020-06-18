import 'package:flutter/material.dart';
import 'package:sgaapp/components/sub_cards.dart';
import 'package:sgaapp/components/tela_fundo.dart';
import 'package:sgaapp/modules/home/componets/card_bottom.dart';
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
          'titulo': 'Plantio',
          'lista': [
            SubCard(
              descricao: "Algodão",
              rota: 'InformacionalTabs',
              imagem: "assets/agronomia/algodao.png",
            ),
            SubCard(
              descricao: "Amendoim",
              rota: 'InformacionalTabs',
              imagem: "assets/agronomia/amendoin.png",
            ),
            SubCard(
              descricao: "Arroz",
              rota: 'InformacionalTabs',
              imagem: "assets/agronomia/arroz.png",
            ),
            SubCard(
              descricao: "Batata",
              rota: 'InformacionalTabs',
              imagem: "assets/agronomia/batata.png",
            ),
            SubCard(
              descricao: "Café",
              rota: 'InformacionalTabs',
              imagem: "assets/agronomia/cafe.png",
            ),
            SubCard(
              descricao: "Cana-de-Açucar",
              rota: 'InformacionalTabs',
              imagem: "assets/agronomia/cacuca.png",
            ),
            SubCard(
              descricao: "Feijão",
              rota: 'InformacionalTabs',
              imagem: "assets/agronomia/feijao.png",
            ),
            SubCard(
              descricao: "Milho",
              rota: 'InformacionalTabs',
              imagem: "assets/agronomia/milho.png",
            ),
            SubCard(
              descricao: "Soja",
              rota: 'InformacionalTabs',
              imagem: "assets/agronomia/algodao.png",
            ),
            SubCard(
              descricao: "Sorgo",
              rota: 'InformacionalTabs',
              imagem: "assets/agronomia/algodao.png",
            ),
            SubCard(
              descricao: "Tomate",
              rota: 'InformacionalTabs',
              imagem: "assets/agronomia/algodao.png",
            ),
            SubCard(
              descricao: "Trigo",
              rota: 'InformacionalTabs',
              imagem: "assets/agronomia/algodao.png",
            ),
            SubCard(
              descricao: "Uva",
              rota: 'InformacionalTabs',
              imagem: "assets/agronomia/algodao.png",
            ),
          ]
        },
        {
          'titulo': 'Equipamentos agrícula',
          'lista': [
            SubCard(
              descricao: "1",
              rota: 'Content',
            ),
            SubCard(
              descricao: "2",
              rota: 'Content',
            ),
            SubCard(
              descricao: "3",
              rota: 'Content',
            ),
            SubCard(
              descricao: "4",
              rota: 'Content',
            ),
            SubCard(
              descricao: "5",
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
      descricao: "Enbaixador",
    ),
    CardHome(
      titulo: "Financeiro",
      rota: "ListDeCards",
      args: {
        'listaCards': [
          SubCard(),
          SubCard(),
          SubCard(),
        ]
      },
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.grey[100],
      body: TelaDeFundo(
        tela: AspectRatio(
          aspectRatio: 1.3,
          child: ListView.builder(
            physics:BouncingScrollPhysics(),
            controller: controller,
            itemCount: _pages.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return _pages[index];
            },
          ),
        ),
      ),
      bottomNavigationBar: Container(
        constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width,
            maxHeight: MediaQuery.of(context).size.height * 0.16),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return CardBottom();
            }),
      ),
    );
  }
}
