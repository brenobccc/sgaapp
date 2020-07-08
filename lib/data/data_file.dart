import 'package:sgaapp/components/sub_cards.dart';
import 'package:sgaapp/modules/content/models/conteudos_model.dart';
import 'package:sgaapp/modules/plantio/model/plantio_model.dart';
import 'package:sgaapp/modules/plantio/model/subcards_model.dart';

class MockListTabs {
  static final ListCardsModel listMock = ListCardsModel(listSubCards: [
    
    // Cards da Tela Principal
    SubCard(
      titulo: "Algodão",  
      rota: 'ConteudoPlantio',
      imagem: "assets/agronomia/algodao.png",  
      args: {
        "dados": SubCardsModel(// Cards da Tela  que tem o carrocel de fotos
            titulo: "Algodão",  
            conteudo:  
                " O algodão é uma fibra usada para fazer tecidos e outros produtos. E ele cresce em plantas semelhantes a arbustos",
            imagens: [  
              "assets/agronomia/algodao/pragas/algodao_scroll/algodao1.jpg",
              "assets/agronomia/algodao/pragas/algodao_scroll/algodao2.jpg"
            ],
            pragas: [
              SubCard(   // Cards da Tela  de pragas
                titulo: "Bicudo do Algodoeiro (Anthonomus grandis)",
                rota: 'Content',
                imagem: "assets/agronomia/pragas/pragas/algodao_pragas_bicudoalgodoeiro.png",
                args: {
                  "dados": ConteudosModel(
                      imagem: "assets/agronomia/amendoin.png",
                      conteudo: "kdskglfskglokfsgç",
                      titulo: "fkjsdjf")
                },
              ),
              SubCard(  // Cards da Tela  de pragas
                titulo: "Amendoim",
                rota: 'Content',
                imagem: "assets/agronomia/amendoin.png",
                args: {
                  "dados": ConteudosModel(
                      imagem: "assets/agronomia/amendoin.png",
                      conteudo: "kdskglfskglokfsgç",
                      titulo: "fkjsdjf")
                },
              ),
            ],
            doencas: [
              SubCard(  // Cards da Tela  de doenças
                titulo: "Amendoim",
                rota: 'Content',
                imagem: "assets/agronomia/amendoin.png",
                args: {
                  "dados": {
                    ConteudosModel(
                        imagem: "assets/agronomia/amendoin.png",
                        conteudo: "kdskglfskglokfsgç",
                        titulo: "fkjsdjf")
                  }
                },
              ),
              SubCard(  // Cards da Tela  de doenças
                titulo: "Amendoim",
                rota: 'Content',
                imagem: "assets/agronomia/amendoin.png",
                args: {
                  "dados": ConteudosModel(
                      imagem: "assets/agronomia/amendoin.png",
                      conteudo: "kdskglfskglokfsgç",
                      titulo: "fkjsdjf")
                },
              ),
            ])
      },
    ),
 
  
  
  
  ]);
}
