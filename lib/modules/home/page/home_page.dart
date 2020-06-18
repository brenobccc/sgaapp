import 'package:flutter/material.dart';
import 'package:sgaapp/components/tela_fundo.dart';
import 'package:sgaapp/modules/home/componets/card_bottom.dart';
import 'package:sgaapp/modules/home/componets/card_home.dart';
import 'package:sgaapp/modules/lista_de_cards/componets/cards.dart';

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
            Cards(
              descricao: "Algodão",
              rota: 'Algodao_menu',
              imagem: "assets/agronomia/algodao.png",
            ),
            Cards(
              descricao: "Amendoim",
              rota: 'Amendoim_Menu',
              imagem: "assets/agronomia/amendoin.png",
            ),
            Cards(
              descricao: "Arroz",
              rota: 'Content',
              imagem: "assets/agronomia/arroz.png",
            ),
            Cards(
              descricao: "Batata",
              rota: 'Content',
              imagem: "assets/agronomia/batata.png",
            ),
            Cards(
              descricao: "Café",
              rota: 'Content',
              imagem: "assets/agronomia/cafe.png",
            ),
            Cards(
              descricao: "Cana-de-Açucar",
              rota: 'Content',
              imagem: "assets/agronomia/cacuca.png",
            ),
            Cards(
              descricao: "Feijão",
              rota: 'Content',
              imagem: "assets/agronomia/feijao.png",
            ),
            Cards(
              descricao: "Milho",
              rota: 'Content',
              imagem: "assets/agronomia/milho.png",
            ),
            Cards(
              descricao: "Soja",
              rota: 'Content',
              imagem: "assets/agronomia/algodao.png",
            ),
            Cards(
              descricao: "Sorgo",
              rota: 'Content',
              imagem: "assets/agronomia/algodao.png",
            ),
            Cards(
              descricao: "Tomate",
              rota: 'Content',
              imagem: "assets/agronomia/algodao.png",
            ),
            Cards(
              descricao: "Trigo",
              rota: 'Content',
              imagem: "assets/agronomia/algodao.png",
            ),
            Cards(
              descricao: "Uva",
              rota: 'Content',
              imagem: "assets/agronomia/algodao.png",
            ),
          ]
        },
        {
          'titulo': 'Equipamentos agrícula',
          'lista': [
            Cards(
              descricao: "1",
              rota: 'Content',
            ),
            Cards(
              descricao: "2",
              rota: 'Content',
            ),
            Cards(
              descricao: "3",
              rota: 'Content',
            ),
            Cards(
              descricao: "4",
              rota: 'Content',
            ),
            Cards(
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
          Cards(),
          Cards(),
          Cards(),
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
