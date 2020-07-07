import 'package:sgaapp/components/sub_cards.dart';
import 'package:sgaapp/modules/content/models/conteudos_model.dart';
import 'package:sgaapp/modules/plantio/model/plantio_model.dart';
import 'package:sgaapp/modules/plantio/model/subcards_model.dart';

class MockListTabs {
  static final ListCardsModel listMock = ListCardsModel(listSubCards: [
    SubCard(
      titulo: "Algodão",
      rota: 'ConteudoPlantio',
      imagem: "assets/agronomia/algodao.png",
      args: {
        "dados": SubCardsModel(
            titulo: "Algodão",
            conteudo:
                "O algodão é uma fibra usada para fazer tecidos e outros produtos. E ele cresce em plantas semelhantes a arbustos",
            imagens: [
              "assets/agronomia/algodao/pragas/doencas/algodao_doencas_mancharamularia.png",
              "assets/agronomia/algodao/pragas/doencas/algodao_doencas_mancharamularia.png"
            ],
            pragas: [
              SubCard(
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
              SubCard(
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
              SubCard(
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
              SubCard(
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
