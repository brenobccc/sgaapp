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
                imagem: "assets/agronomia/algodao/pragas/pragas/algodao_pragas_biculdoalgodoeiro.png",
                args: {
                  "dados": ConteudosModel(
                      imagem: "assets/agronomia/algodao/pragas/pragas/algodao_pragas_biculdoalgodoeiro.png",
                      conteudo: 'Eles recebem o nome de bicudo por terem uma cabeça prolongada, formando um\n“bico característico.”\nO Bicudo é uma das pragas chave do algodoeiro que contém maior relevância econômica na cultura do algodão, e pode atacar a cultura desde o início da floração até a colheita.\nele é da família dos curculionídeos, de cor cinzenta ou castanha e contém mandíbulas afiadas. De origem da América Central, veio ao Brasil em 1983.Nas condições climáticas do Brasil, o inseto leva de 14 a 22 dias para completar o seu ciclo de desenvolvimento.\nControle:\n● Controle biológico.\nÉ aquele que ocorre pela ação constante de agentes biológicos\nnativos(entomopatógenos, predadores e/ou parasitóides) contra a praga,Esse controle é chamado natural porque ocorre sem a intervenção direta do homem na manipulação dos organismos benéficos\n● Controle Cultural.\n● Controle químico;\nO controle deve conter medidas integradas de manejo, que compreendem autilização de inseticidas químicos, uma vez tomada a decisão de controle\nquímico de uma determinada população de inseto-praga do algodoeiro, aescolha e o uso do produto devem ser criteriosos.medidas para controle:Plantio-isca.Tubo mata bicudo.Pulverização de inseticidas.Uma prática importante é a rotação de produtos com diferentes mecanismos de açãoO momento ideal para o controle do bicudo é quando a flor branca está totalmente abertadas 9h às 16h, período no qual o bicudo fica circulando;Pontos importantes:Escolha da cultivar,época de plantio, catação de botões florais, destruição dasoqueira e rotação de culturas.',
                      titulo: "Bicudo do Algodoeiro (Anthonomus grandis)")
                },
              ),
              SubCard(  // Cards da Tela  de pragas
                titulo: "Broca da Raiz.(Eutinobothrus brasiliensis)",
                rota: 'Content',
                imagem: "assets/agronomia/algodao/pragas/pragas/algodao_pragas_brocaraiz.png",
                args: {
                  "dados": ConteudosModel(
                      imagem: "assets/agronomia/amendoin.png",
                      conteudo: "kdskglfskglokfsgç",
                      titulo: "fkjsdjf")
                },
              ),
              SubCard(  // Cards da Tela  de pragas
                titulo: "Pulgão do algodoeiro(Aphis gossypii)",
                rota: 'Content',
                imagem: "assets/agronomia/algodao/pragas/pragas/algodao_pragas_pulgaoalgodoeiro.png",
                args: {
                  "dados": ConteudosModel(
                      imagem: "assets/agronomia/amendoin.png",
                      conteudo: "kdskglfskglokfsgç",
                      titulo: "fkjsdjf")
                },
              ),
              SubCard(  // Cards da Tela  de pragas
                titulo: "Helicoverpa Armigera.",
                rota: 'Content',
                imagem: "assets/agronomia/algodao/pragas/pragas/algodao_pragas_helicoverpaamigera.png",
                args: {
                  "dados": ConteudosModel(
                      imagem: "assets/agronomia/amendoin.png",
                      conteudo: "kdskglfskglokfsgç",
                      titulo: "fkjsdjf")
                },
              ),
              SubCard(  // Cards da Tela  de pragas
                titulo: "Percevejo Verde(Fede Fede - Nezara Viridula)",
                rota: 'Content',
                imagem: "assets/agronomia/algodao/pragas/pragas/algodao_pragas_percevejoverde.png",
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
