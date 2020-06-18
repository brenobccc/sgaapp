import 'package:flutter/material.dart';
import 'package:sgaapp/components/tela_fundo.dart';
import 'package:sgaapp/modules/home/componets/card_bottom.dart';
import 'package:sgaapp/modules/home/componets/card_home.dart';
import 'package:sgaapp/modules/home/componets/circule.dart';
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
            ),
            Cards(
              descricao: "Amendoim",
              rota: 'Amendoim_Menu',
            ),
            Cards(
              descricao: "Arroz",
              rota: 'Content',
            ),
            Cards(
              descricao: "Batata",
              rota: 'Content',
            ),
            Cards(
              descricao: "Café",
              rota: 'Content',
            ),
            Cards(
              descricao: "Cana-de-Açucar",
              rota: 'Content',
            ),
            Cards(
              descricao: "Feijão",
              rota: 'Content',
            ),
            Cards(
              descricao: "Milho",
              rota: 'Content',
            ),
            Cards(
              descricao: "Soja",
              rota: 'Content',
            ),
            Cards(
              descricao: "Sorgo",
              rota: 'Content',
            ),
            Cards(
              descricao: "Tomate",
              rota: 'Content',
            ),
            Cards(
              descricao: "Trigo",
              rota: 'Content',
            ),
            Cards(
              descricao: "Uva",
              rota: 'Content',
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
