import 'package:sgaapp/components/sub_cards.dart';
import 'package:sgaapp/modules/plantio/model/plantio_model.dart';

class MockListTabs {
  static final ListCardsModel listMock = 
    ListCardsModel(
      title: 'Teste',
      listSubCards: [
        SubCard(
          titulo: "Algodão",
          rota: 'ConteudoPlantio',
          imagem: "assets/agronomia/algodao.png",
        ),
        SubCard(
          titulo: "Amendoim",
          rota: 'ConteudoPlantio',
          imagem: "assets/agronomia/amendoin.png",
        ),
        SubCard(
          titulo: "Arroz",
          rota: 'ConteudoPlantio',
          imagem: "assets/agronomia/arroz.png",
        ),
        SubCard(
          titulo: "Batata",
          rota: 'ConteudoPlantio',
          imagem: "assets/agronomia/batata.png",
        ),
        SubCard(
          titulo: "Café",
          rota: 'ConteudoPlantio',
          imagem: "assets/agronomia/cafe.png",
        ),
       ] 
    );
  
}
