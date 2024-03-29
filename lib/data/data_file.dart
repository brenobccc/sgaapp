import 'package:flutter/material.dart';
import 'package:sgaapp/components/sub_cards.dart';
import 'package:sgaapp/modules/content/models/conteudos_model.dart';
import 'package:sgaapp/modules/plantio/model/plantio_model.dart';
import 'package:sgaapp/modules/plantio/model/subcards_model.dart';

class MockListTabs {
  static final ListCardsModel listMock = ListCardsModel(listSubCards: [
    // Cards da Tela Principal
    SubCard(
      color: Color(0XFF87c9d7),
      titulo: "Algodão",
      rota: 'ConteudoPlantio',
      imagem: "assets/agronomia/algodao.png",
      args: {
        "dados": SubCardsModel(
            // Cards da Tela  que tem o carrocel de fotos
            titulo: "Algodão",
            conteudo:
                "   O algodão é uma fibra usada para fazer tecidos e outros produtos.\n   E ele cresce em plantas semelhantes a arbustos",
            imagens: [
              "assets/agronomia/algodao/pragas/algodao_scroll/algodao1.jpg",
              "assets/agronomia/algodao/pragas/algodao_scroll/algodao2.jpg"
            ],
            pragas: [
              SubCard(
                // Cards da Tela  de pragas
                titulo: "Bicudo do\nAlgodoeiro.",
                rota: 'Content',
                imagem:
                    "assets/agronomia/algodao/pragas/pragas/algodao_pragas_biculdoalgodoeiro.png",
                args: {
                  "dados": ConteudosModel(
                      imagem:
                          "assets/agronomia/algodao/pragas/pragas/algodao_pragas_biculdoalgodoeiro.png",
                      conteudo:
                          '   Eles recebem o nome de bicudo por terem uma cabeça prolongada, formando um “bico característico”.\n   O Bicudo é uma das pragas chave do algodoeiro que contém maior relevância econômica na cultura do algodão, e pode atacar a cultura desde o início da floração até a colheita.\n   Ele é da família dos curculionídeos, de cor cinzenta ou castanha e contém mandíbulas afiadas.\n   De origem da América Central, veio ao Brasil em 1983. Nas condições climáticas do Brasil, o inseto leva de 14 a 22 dias para completar o seu ciclo de desenvolvimento\n\nControle da praga:\n  ● Controle biológico.\n    É aquele que ocorre pela ação constante de agentes biológicos nativos(entomopatógenos, predadores e/ou parasitóides) contra a praga,\n    Esse controle é chamado natural porque ocorre sem a intervenção direta do homem na manipulação dos organismos benéficos\n  ● Controle Cultural.\n  ● Controle químico;\n O controle deve conter medidas integradas de manejo, que compreendem autilização de inseticidas químicos, uma vez tomada a decisão de controle químico de uma determinada população de inseto-praga do algodoeiro, a escolha e o uso do produto devem ser criteriosos.\n\nMedidas para controle:   \n      Plantio-isca.     \n      Tubo mata bicudo.     \n      Pulverização de inseticidas.      \n\n    Uma prática importante é a rotação de produtos com diferentes mecanismos de ação.\n\n   O momento ideal para o controle do bicudo é quando a flor branca está totalmente aberta, das 9h às 16h(período no qual o bicudo fica circulando).\n\nPontos importantes:\n   Escolha da cultivar\n   Época de plantio.\n   Catação de botões florais, destruição dasoqueira e rotação de culturas.\n\n\n\n',
                      titulo: "Bicudo do Algodoeiro (Anthonomus grandis)")
                },
              ),
              SubCard(
                // Cards da Tela  de pragas
                titulo: "Broca da Raiz.",
                rota: 'Content',
                imagem:
                    "assets/agronomia/algodao/pragas/pragas/algodao_pragas_brocaraiz.png",
                args: {
                  "dados": ConteudosModel(
                      imagem:
                          "assets/agronomia/algodao/pragas/pragas/algodao_pragas_brocaraiz.png",
                      conteudo:
                          "Culturas Afetadas: Algodão.\n\n  Danos:\n    Os danos são caracterizados pelo murchamento da plantas novas, se alojando na raiz, impedindo e paralisando o crescimento da plantas, além de ocorrer uma mudança na cor das folhas, que ficam com um tom mais avermelhado, com isso elas murcham e secam, levando á morte da planta.\n\nControle:\n    Realizar pulverizações com inseticidas específicos, registrados para a cultura.\n\n\n\n",
                      titulo: "Broca da Raiz.(Eutinobothrus brasiliensis)")
                },
              ),
              SubCard(
                // Cards da Tela  de pragas
                titulo: "Pulgão do\nalgodoeiro.",
                rota: 'Content',
                imagem:
                    "assets/agronomia/algodao/pragas/pragas/algodao_pragas_pulgaoalgodoeiro.png",
                args: {
                  "dados": ConteudosModel(
                      imagem:
                          "assets/agronomia/algodao/pragas/pragas/algodao_pragas_pulgaoalgodoeiro.png",
                      conteudo:
                          "Culturas Afetadas: Abacate, Abacaxi, Abóbora, Abobrinha, Algodão, Alstroemeria,  Anonáceas, Batata, Begônia, Cacau, Celósia, Crisântemo, Cupuaçu, Gérbera, Girassol, Guaraná, Hibisco, Kiwi, Mamão, Manga, Mangaba, Maracujá, Melancia, Melão, Orquídea,Pepino, Pimentão, Plantas ornamentais, Poinsétia, Quiabo, Romã, Rosa São insetos pequenos, de cor variando do amarelo ao verde, e vivem sobre folhas e brotos novos da planta.\n\nDanos:\n    Eles sugam a seiva, produzindo o encarquilhamento das folhas e deformação dos brotos, e ao expelir um líquido açucarado, atraem formigas, no qual contribui na formação de fumagina(Capnodium spp) o que dificulta a respiração e a fotossíntese da planta.\n\nControle:\n\n   ● Controle Químico.\n   Com uso de inseticidas, no tratamentos das sementes ou no solo, alguns principais são:\n      Disulfoton.\n     Acephate.\n     Carbofuran.\n     Midacloprid.\n      Aldicarb.\n\nElas irão poder proteger as plantas em até 25 Dias, reduzindo o desenvolvimento de Pulgões.\n\n  ● Controle Biológico\n    É de essencial importância a ação dos inimigos naturais na redução dos pulgões.\n\n\n\n",
                      titulo: "Pulgão do algodoeiro(Aphis gossypii)")
                },
              ),
              SubCard(
                // Cards da Tela  de pragas
                titulo: "Helicoverpa\nArmigera.",
                rota: 'Content',
                imagem:
                    "assets/agronomia/algodao/pragas/pragas/algodao_pragas_helicoverpaamigera.png",
                args: {
                  "dados": ConteudosModel(
                      imagem:
                          "assets/agronomia/algodao/pragas/pragas/algodao_pragas_helicoverpaamigera.png",
                      conteudo:
                          "Culturas Afetadas: Abóbora, Abobrinha, Aipo, Alface, Alfafa, Algodão, Algodão - OGM, Alho, Amendoim, Arroz, Batata, Berinjela, Beterraba, Brócolis, Café, Canola, Cebola, Chicória, Chuchu, Citros, Couve, Couve-flor, Ervilha, Espinafre, Feijão, Feijão vagem, Fumo, Gérbera, Girassol, Grão-de-bico, Jiló, Linhaça, Maçã, Melancia, Melão, Milheto, Milho, Morango, Pepino, Pêra, Pimenta, Pimentão, Plantas ornamentais, Quiabo, Repolho, Rosa, Rúcula, Soja, Sorgo, Todas as culturas com ocorrência do alvo biológico, Tomate, Trigo, Uva.\n\n     Uma da principais pragas das culturas no mundo, a helicoverpa armigera ataca diversas culturas, mas no Brasil tem como foco a soja, o milho, e o algodão.\n\n Danos:\n    Se alimentam em todos os estágios de desenvolvimento da plantas, danificando todas as estruturas. \n\nControle: \n      ● Manejo integrado de pragas.\n      ● Inseticidas Biológicos e Químicos.\n      ● Seletivos aos inimigos naturais.\n\n\n\n",
                      titulo: "Helicoverpa Armigera.")
                },
              ),
              SubCard(
                // Cards da Tela  de pragas
                titulo: "Percevejo\nVerde.",
                rota: 'Content',
                imagem:
                    "assets/agronomia/algodao/pragas/pragas/algodao_pragas_percevejoverde.png",
                args: {
                  "dados": ConteudosModel(
                      imagem:
                          "assets/agronomia/algodao/pragas/pragas/algodao_pragas_percevejoverde.png",
                      conteudo:
                          "Culturas Afetadas: Girassol, Soja, Todas as culturas com ocorrência do alvo biológico.\n\n Recentemente surgiu como uma nova praga na cultura do algodão.\n\n  Danos:\n    Ao se alimentar, os percevejos injetam toxinas nos grão. E nos orifícios deixados pelo aparelho bucal dos insetos, são penetrados microorganismos que determinam o chochamento dos grãos causando depreciação do produto no ato da comercializaçã.\n\n  Controle:\n   Produtos em pulverização, escolhendo aqueles mais seletivos aos inimigos naturais e menos tóxicos ao homem.\n\n\n\n",
                      titulo: "Percevejo Verde(Fede Fede - Nezara Viridula)")
                },
              ),
            ],
            doencas: [
              SubCard(
                // Cards da Tela  de doenças
                titulo: "Mancha de\nRamulária.",
                rota: 'Content',
                imagem:
                    "assets/agronomia/algodao/pragas/doencas/algodao_doencas_mancharamularia.png",
                args: {
                  "dados": ConteudosModel(
                      imagem:
                          "assets/agronomia/algodao/pragas/doencas/algodao_doencas_mancharamularia.png",
                      conteudo:
                          "     A mancha de ramulária teve seu status alterado de doença secundária para uma das principais doenças da atualidade no algodoeiro.\n\n Danos:\n    A mancha de ramulária atualmente é considerada a principal doença do algodoeiro no Brasil, e pode causar uma redução de até 35% na produtividade.\n   Seus danos são relacionados à redução da área sadia das folhas, redução da fotossíntese, senescência antecipada, secamento foliar completo de desfolha precoce em situações de alta severidade, os danos são mais expressivos entre o início do florescimento e a abertura dos primeiros capulhos.\n\n  Controle:\n\n   Com a aplicação de fungicidas, se pode obter um controle da doença de forma eficaz, se forem iniciadas a partir dos primeiros sintomas.\n   O atraso no início da primeira aplicação diminui a eficiência do controle e pode torná lo economicamente inviável.\n      Outra forma e manejo da doença são os cultivares resistentes, por exemplo, o algodão BRS 371 RF, que possui resistência à ramulária e é tolerante ao herbicida glifosato.\n\n\n\n",
                      titulo: "Mancha de Ramulária(Ramularia Areola).")
                },
              ),
              SubCard(
                // Cards da Tela  de doenças
                titulo:
                    "Ramulose.",
                rota: 'Content',
                imagem:
                    "assets/agronomia/algodao/pragas/doencas/algodao_doencas_ramulose.png",
                args: {
                  "dados": ConteudosModel(
                      imagem:
                          "assets/agronomia/algodao/pragas/doencas/algodao_doencas_ramulose.png",
                      conteudo:
                          "Ela foi encontrada pela primeira vez em Rancharia-SP(1936), e atualmente se encontra em todas as regiões do país onde há a cultiva do algodoeiro.\n\n  Danos:\n    A ramulose se manifesta em plantas de qualquer idade. Primeiramente, os sintomas aparecem nas folhas novas, na forma de manchas necróticas meio circulares, e ao afetar novas plantas, as gemas terminais dos ramos extranumerários poderão sofrer novas infecções, com isso podem estimular o desenvolvimento de novas gemas com sua morte.\n\n  Controle:\n   A medida principal é a utilização de variedades com resistência ao patógeno, há os seguintes tipos:\n\n   Resistentes: EPAMIG 3, EPAMIG 4, PR 380/82, IAC 21, CS 50, Deltapine Acala 90;\n\n   Medianamente resistentes: CNPA Precoce 1, LAC 19, LAC 22 e LAC 20;\n\n    Suscetíveis: Nu-15-79/117, CNPA Acala 1, IAPAR 4 PR-1. Outro maneira de controlar, é com o uso de semente Sadias.\n\n\n\n",
                      titulo:
                          "Ramulose(Colletotrichum gossypii var. cephalosporioides)")
                },
              ),
              SubCard(
                // Cards da Tela  de doenças
                titulo:
                    "Murcha de\nFusarium.",
                rota: 'Content',
                imagem:
                    "assets/agronomia/algodao/pragas/doencas/algodao_doencas_murcharafusarium.png",
                args: {
                  "dados": ConteudosModel(
                      imagem:
                          "assets/agronomia/algodao/pragas/doencas/algodao_doencas_murcharafusarium.png",
                      conteudo:
                          "Culturas Afetadas: Algodão.\n\nÉ a doença principal do algodoeiro de ciclo anual, e são cultivadas principalmente nos estados de São Paulo e Paraná.\n\n Danos:\n    O quadro sintomatológico de plantas doentes é bastante variável, dependendo das condições ambientais, e outros demais fatores.\n\n  Sintomas:\n   Alguns dos sintomas iniciais começam pelas basais, elas se amarelam e exibem crestamento do limbo e caem. A murcha das folhas e morte prematura ocorre em variedades suscetíveis.\n\n Controle:\n   Uso de variedades resistentes, além de outras medidas como: \n\n      Rotação de cultura.\n      Tratamento das sementes com tíofanato ou tiabendazole.\n      Plantio em áreas indenes\n      Plantios de variedades e híbridos resistentes.\n\n\n\n",
                      titulo:
                          "Fusariose/Murcha de Fusarium (Fusarium oxysporum f.sp.vasinfectum)")
                },
              ),
            ]),
        "cor": Color(0XFF87c9d7),
      },
    ),

    SubCard(
      color: Color(0XFF8f671f),
      titulo: "Amendoim",
      rota: 'ConteudoPlantio',
      imagem: "assets/agronomia/amendoin.png",
      args: {
        "dados": SubCardsModel(
            // Cards da Tela  que tem o carrocel de fotos
            titulo: "Amendoim",
            conteudo:
                "     O amendoim é uma leguminosa de origem vegetal, da família Fabaceae.\n     É uma planta originária da América do Sul e é hoje um dos principais cultivos da África, onde faz parte de vários pratos da culinária.",
            imagens: [
              "assets/agronomia/amendoim/amendoim_scroll/amendoin1.jpg",
              "assets/agronomia/amendoim/amendoim_scroll/amendoin2.jpg"
            ],
            pragas: [
              SubCard(
                // Cards da Tela  de pragas
                titulo: "Lagarta Pescoço\nVermelho.",
                rota: 'Content',
                imagem:
                    "assets/agronomia/amendoim/pragas/amendoin_pragas_lagartacapin.png",
                args: {
                  "dados": ConteudosModel(
                      imagem:
                          "assets/agronomia/amendoim/pragas/amendoin_pragas_lagartacapin.png",
                      conteudo:
                          'Culturas Afetadas: Alfafa, Algodão, Amendoim, Arroz, Batata, Brócolis, Cana-de-açúcar, Coco, Couve, Couve-flor, Fumo, Gengibre, Mandioca, Maracujá, Milho, Pastagens,Repolho, Seringueira (Floresta implantada), Soja, Trigo.\n\n      Em alguns locais, pode ocorrer alta infestação da praga.\n      Ela atua em diversas culturas de importância econômica.\n\n Danos:\n      Inicia-se em capinzais localizados em tornos das lavouras, elas atacam as folhas, deixando somente a nervura central.\n\n Controle:\n     Controle químico localizado sobre área infestada, o inseticida pode ser aplicado tanto por pulverização convencional como via água de irrigação por aspersão.(usar produtos registrados para as culturas).\n\n\n\n',
                      titulo: "Lagarta do pescoço vermelho(Stegasta bosquella)")
                },
              ),
              SubCard(
                // Cards da Tela  de pragas
                titulo: "Lagarta\ndos capinzais.",
                rota: 'Content',
                imagem:
                    "assets/agronomia/amendoim/pragas/amendoin_pragas_lagartacapin.png",
                args: {
                  "dados": ConteudosModel(
                      imagem:
                          "assets/agronomia/amendoim/pragas/amendoin_pragas_lagartacapin.png",
                      conteudo:
                          "Culturas Afetadas: Alfafa, Algodão, Amendoim, Arroz, Batata, Brócolis, Cana-de-açúcar, Coco, Couve, Couve-flor, Fumo, Gengibre, Mandioca, Maracujá, Milho, Pastagens, Repolho, Seringueira(Floresta implantada), Soja, Trigo.\n\n      Em alguns locais, pode ocorrer alta infestação da praga, ela atua em diversas culturas de importância econômica.\n\n  Danos:\n      Inicia-se em capinzais localizados em tornos das lavouras, elas atacam as folhas, deixando somente a nervura central.\n\n Controle:\n     Controle químico localizado sobre área infestada, o inseticida pode ser aplicado tanto por pulverização convencional como via água de irrigação por aspersão(usar produtos registrados para as culturas).\n\n\n\n",
                      titulo: "Lagarta dos capinzais(Mocis Lapites)")
                },
              ),
              SubCard(
                // Cards da Tela  de pragas
                titulo: "Percevejo\nCastanho.",
                rota: 'Content',
                imagem:
                    "assets/agronomia/amendoim/pragas/amendoin_pragas_percevejocastanho.png",
                args: {
                  "dados": ConteudosModel(
                      imagem:
                          "assets/agronomia/amendoim/pragas/amendoin_pragas_percevejocastanho.png",
                      conteudo:
                          "Culturas Afetadas: Algodão, Milho, todas as culturas com ocorrência do alvo biológico.\n\n     A ocorrência deste inseto é incerta, o que dificulta no tratamento da mesma.\n  Danos:\n      Eles se alimentam nas raízes e sugam a seiva, o ataque severo causa morte da planta, seus sintomas de ataque variam de acordo com a intensidade e época do ataque, e muitas vezes são confundidos por deficiência nutricional ou doença.\n\n  Controle:\n     Controle biológico com o fungo Metarhizium anisopliae.\n\n\n\n",
                      titulo: "Percevejo castanho(Scaptocoris castanea)")
                },
              ),
              SubCard(
                // Cards da Tela  de pragas
                titulo: "Cigarrinha\nVerde.",
                rota: 'Content',
                imagem:
                    "assets/agronomia/amendoim/pragas/amendoin_pragas_cigarrinhaverde.png",
                args: {
                  "dados": ConteudosModel(
                      imagem:
                          "assets/agronomia/amendoim/pragas/amendoin_pragas_cigarrinhaverde.png",
                      conteudo:
                          "Culturas Afetadas: Algodão, Amendoim, Batata, Feijão, Feijão vagem, Mamão, Mandioca, Pinhão-manso.\n\n     Eles causam prejuízos por conta de suas picadas, com isso eles injetam toxinas na plantas atacadas.\n\n Danos:\n      Podem ser como consequência da penetração do estilete no floema da planta, além disso, também há a injeção de substâncias toxicogênicas durante a alimentação.\n\nControle:\n     Controle químico das ninfas e adultos com inseticidas registrados para as culturas.\n\n\n\n",
                      titulo: "Cigarrinha verde(Empoasca kraemeri)")
                },
              ),
              SubCard(
                // Cards da Tela  de pragas
                titulo: "Traça.",
                rota: 'Content',
                imagem:
                    "assets/agronomia/amendoim/pragas/amendoin_pragas_traca.png",
                args: {
                  "dados": ConteudosModel(
                      imagem:
                          "assets/agronomia/amendoim/pragas/amendoin_pragas_traca.png",
                      conteudo:
                          "Culturas Afetadas: Amendoim, Cacau, Soja.\n\n      Ela é considerada uma praga de superficie, atacando o embriâo dos grãos expostos.\n\n\n\n",
                      titulo: "Traça (Corcyra cephalonica)")
                },
              ),
            ],
            doencas: [
              SubCard(
                // Cards da Tela  de doenças
                titulo:
                    "Mancha\nCastanha.",
                rota: 'Content',
                imagem:
                    "assets/agronomia/amendoim/doencas/amendoin_doencas_manchamcastanha.png",
                args: {
                  "dados": ConteudosModel(
                      imagem:
                          "assets/agronomia/amendoim/doencas/amendoin_doencas_manchamcastanha.png",
                      conteudo:
                          "Culturas Afetadas: Amendoim, Feijão-caupi.\n\n     Ela é considerada uma das principais doenças foliar do amendoim, no qual impacta fortemente nas reduções dos rendimentos quando o nível de desfolhação é alto.\n      A infecção começa nas folhas mais velhas e progride para as mais jovens, os folíolos severamente infectados caem com facilidade, provocando a desfolhação e a consequente redução dos rendimentos.\n\n  Controle:\n     Realizar rotações de cultura com cultivos não hospedeiros, retirar do campo os restos de culturas infectadas ou contaminados e queimá-los ou enterrá-los por aração profunda do próprio campo.\n\n\n\n",
                      titulo: "Mancha castanha / Mancha foliar (Cercospora arachidicola)")
                },
              ),
              SubCard(
                // Cards da Tela  de doenças
                titulo: "Mancha\nPreta.",
                rota: 'Content',
                imagem:
                    "assets/agronomia/amendoim/doencas/amendoin_doencas_manchapreta.png",
                args: {
                  "dados": ConteudosModel(
                      imagem:
                          "assets/agronomia/amendoim/doencas/amendoin_doencas_manchapreta.png",
                      conteudo:
                          "Culturas Afetadas: Amendoim, Feijão-caupi.\n\n     Ela é considerada uma das principais doenças foliar do amendoim, no qual impacta fortemente nas reduções dos rendimentos quando o nível de desfolhação é alto, a infecção começa nas folhas mais velhas e progride para as mais jovens, os folíolos severamente infectados caem com facilidade, provocando a desfolhação e a consequente redução dos rendimentos.\n\n  Controle:\n     Realizar rotações de cultura com cultivos não hospedeiros, retirar do campo os restos de culturas infectadas ou contaminados e queimá-los ou enterrá-los por aração profunda do próprio campo.\n\n\n\n",
                      titulo: "Mancha preta(Pseudocercospora personata)")
                },
              ),
              SubCard(
                // Cards da Tela  de doenças
                titulo: "Rhizoctoniose.",
                rota: 'Content',
                imagem:
                    "assets/agronomia/amendoim/doencas/amendoin_doencas_rhizoctoniose.png",
                args: {
                  "dados": ConteudosModel(
                      imagem:
                          "assets/agronomia/amendoim/doencas/amendoin_doencas_rhizoctoniose.png",
                      conteudo:
                          "     Esta é uma das doenças mais comuns, e que causa maiores prejuízos na plantas.\n\n Sintomas:\n     Os sintomas mais graves aparecem na primavera, pouco depois da plantação, ocorrendoalgo como atraso no desenvolvimento da planta, e descoloração dos caules, necrose dotecido vascular, e pigmentações púrpuras nas folhas.\n\n Controle:\n     O tratamento da semente com fungicidas e as mesmas práticas culturais recomendadas para controle da mesma.\n\n\n\n",
                      titulo: "Rhizoctoniose.")
                },
              ),
              SubCard(
                // Cards da Tela  de doenças
                titulo: "Mancha\nBarrenta.",
                rota: 'Content',
                imagem:
                    "assets/agronomia/amendoim/doencas/amendoin_doencas_manchabarrenta.png",
                args: {
                  "dados": ConteudosModel(
                      imagem:
                          "assets/agronomia/amendoim/doencas/amendoin_doencas_manchabarrenta.png",
                      conteudo:
                          "Culturas afetadas: Amendoim.\n\n     É uma doença de importância secundária, que ocorre no terço final do ciclo vegetativo do amendoim.\n\n  Sintomas:\n     Inicia-se com pequenas manchas pardas, depois elas coalescem tomando grandes áreas foliares e tornando-se visíveis na superfície inferior.\n\n  Controle:\n     Realizar rotação de culturas, incorporação de restos de aração profunda e destruição de plantas voluntárias.\n\n\n\n",
                      titulo: "Mancha Barrenta")
                },
              ),
            ]),
        "cor": Color(0XFF8f671f)
      },
    ),

    SubCard(
      color: Color(0xFFbdbebd),
      titulo: "Arroz",
      rota: 'ConteudoPlantio',
      imagem: "assets/agronomia/arroz.png",
      args: {
        "dados": SubCardsModel(
            // Cards da Tela  que tem o carrocel de fotos
            titulo: "Arroz",
            conteudo:
                "     O arroz (Oryza sativa) é uma planta da família das gramíneas.\n     Durante muitos anos, os grãos dessas plantas constituíram a base alimentar de muitos povos em todo o mundo, hoje em dia não é diferente, a cultura do arroz é a terceira maior do mundo. O arroz com feijão, por exemplo, é a base de alimentação do brasileiro.",
            imagens: [
              "assets/agronomia/arroz/arroz_scroll/arroz1.jpg",
              "assets/agronomia/arroz/arroz_scroll/arroz2.jpg"
            ],
            pragas: [
              SubCard(
                // Cards da Tela  de pragas
                titulo:
                    "Broca do colo.",
                rota: 'Content',
                imagem:
                    "assets/agronomia/arroz/pragas/arroz_pragas_brocacolo.png",
                args: {
                  "dados": ConteudosModel(
                    imagem:
                        "assets/agronomia/arroz/pragas/arroz_pragas_brocacolo.png",
                    conteudo:
                        'Culturas Afetadas: Algodão, Amendoim, Arroz, Aveia, Centeio, Cevada, Feijão, Feijão-caupi, Gengibre, Girassol, Mamona, Milho, Soja, Sorgo, Trigo.\n\n      Seu aparecimento é esporádico, e está relacionado a secas em períodos, no qual favorece o intenso desenvolvimento da praga.\n\n Danos:\n      Provocam murcha e a morte das folhas, mais conhecido como ”coração morto”.\n\n  Controle:     \nTratamento das sementes com inseticidas sistêmicos.\n     Em anos de seca, é recomendável o uso de produtos com ação de contato e profundidade associado ao tratamento das sementes.\n\n\n\n',
                    titulo:
                        "Broca do colo./lagarta elasmo(Elasmopalpus lignosellus)",
                  )
                },
              ),
              SubCard(
                // Cards da Tela  de pragas
                titulo: "Pulgão da\nRaiz",
                rota: 'Content',
                imagem:
                    "assets/agronomia/arroz/pragas/arroz_pragas_pulgaoraiz.png",
                args: {
                  "dados": ConteudosModel(
                      imagem:
                          "assets/agronomia/arroz/pragas/arroz_pragas_pulgaoraiz.png",
                      conteudo:
                          "Culturas Afetadas: Arroz, Arroz irrigado.\n\n      Eles contém uma cor de cinza escuro, e formam colônias nas raízes das plantas.\n\nDanos:\n      Eles sugam a seiva das raízes, injetam toxinas, fazendo elas ficarem amarelas a paralisando o crescimento.\n\n  Controle:\n     Pode ser feito de forma Biológica, sendo efetuado o controle com patógenos, como o Entomophthora sp, também pode ser feito controle de forma Química, usando os inseticidas seletivos.\n\n\n\n",
                      titulo: "Pulgão da raiz(Rhopalosiphum rufiabdominale)")
                },
              ),
              SubCard(
                // Cards da Tela  de pragas
                titulo:
                    "Cigarrinha das\nPastagens.",
                rota: 'Content',
                imagem:
                    "assets/agronomia/arroz/pragas/arroz_pragas_cigarrinhapastagens.png",
                args: {
                  "dados": ConteudosModel(
                    imagem:
                        "assets/agronomia/arroz/pragas/arroz_pragas_cigarrinhapastagens.png",
                    conteudo:
                        "Culturas Afetadas: Arroz, Milho, Pastagens, Todas as culturas com ocorrência do alvo biológico.\n\n      Elas infestam áreas de pastagens.\n\n Danos:\n      Ao picarem as folhas, elas mostram áreas cloróticas e com sinais de necrose, no qual pode se acarretar na morte da planta.\n\n  Controle:\n     Tratando as sementes com inseticidas e realizar cultivo em lugares longes de pastagens.\n\n\n\n",
                    titulo:
                        "Cigarrinha das pastagens/Cigarrinha dos capinzais (Deois flavopicta)",
                  )
                },
              ),
              SubCard(
                // Cards da Tela  de pragas
                titulo: "Cascudo\nPreto.",
                rota: 'Content',
                imagem:
                    "assets/agronomia/arroz/pragas/arroz_pragas_cascudopreto.png",
                args: {
                  "dados": ConteudosModel(
                      imagem:
                          "assets/agronomia/arroz/pragas/arroz_pragas_cascudopreto.png",
                      conteudo:
                          "Culturas Afetadas: Arroz, Cana-de-açúcar.\n\n Danos:\n     Causam perfurações na planta de maneira agressiva, acarretando sérios prejuízos.\n\n  Controle:\n     Uso de inseticidas específicos registrados para as culturas.\n\n\n\n",
                      titulo: "Cascudo preto(Euetheola humilis)")
                },
              ),
              SubCard(
                // Cards da Tela  de pragas
                titulo:
                    "Percevejo do\nArroz.",
                rota: 'Content',
                imagem:
                    "assets/agronomia/arroz/pragas/arroz_pragas_percevejograo.png",
                args: {
                  "dados": ConteudosModel(
                      imagem:
                          "assets/agronomia/arroz/pragas/arroz_pragas_percevejograo.png",
                      conteudo:
                          "Culturas Afetadas: Arroz é um dos percevejos que causam danos a várias culturas, principalmente no arroz.\n\n  Danos:\n      Eles sugam a seiva das folhas e grãos leitosos, causando chochamento engessamento dos grãos.\n\n  Controle:\n     Realizar o uso de inseticidas específicos.\n\n\n\n",
                      titulo:
                          "Percevejo do arroz/Percevejo da panícula (Oebalus poecilus)")
                },
              ),
            ],
            doencas: [
              SubCard(
                // Cards da Tela  de doenças
                titulo: "Brusone.",
                rota: 'Content',
                imagem:
                    "assets/agronomia/arroz/doencas/arroz_doencas_brusone.png",
                args: {
                  "dados": ConteudosModel(
                      imagem:
                          "assets/agronomia/arroz/doencas/arroz_doencas_brusone.png",
                      conteudo:
                          "Culturas Afetadas: Arroz, Arroz irrigado, Cevada, Gramados, Milheto, Tratamento de sementes, Trigo.\n\n      Ela é considerada a doença mais importante do arroz, as perdas são variáveis em função da variedade cultivada e dos fatores climáticos na área de cultivo.\n\n  Danos:\n      Ela pode ocorrer em todas as partes da planta, nas folhas os sintomas mais comuns se iniciam por pequenos pontos de coloração castanhas, e evoluem para manchas elípticas, quando a doença ocorre fortemente nos estágios iniciais dela, o impacto é tão grande que a queima das folhas leva a morte da planta.\n\n Controle:\n     Variedades resistentes, práticas culturas e aplicação de fungicida de maneira integrada.\n\n\n\n",
                      titulo: "Brusone(Pyricularia grisea)")
                },
              ),
              SubCard(
                // Cards da Tela  de doenças
                titulo:
                    "Mancha Parda.",
                rota: 'Content',
                imagem:
                    "assets/agronomia/arroz/doencas/arroz_doencas_manchaparda.png",
                args: {
                  "dados": ConteudosModel(
                    imagem:
                        "assets/agronomia/arroz/doencas/arroz_doencas_manchaparda.png",
                    conteudo:
                        "Culturas Afetadas: Arroz, Arroz irrigado.\n\n      A mancha parda normalmente ocorre tanto em coulturas instaladas sobre condições irrigadas, como de sequeiro.\n\n  Danos:\n      Os sintomas são frequentemente encontrado nas folhas e nos grãos.\n     Nos grãos, as manchas em ataques severos podem cobrir parcial ou totalmente a superfície do grão, podendo acarretar chochamento, redução de peso e gessamento do mesmo. Sementes severamente atacadas normalmente sofrem redução do seu poder germinativo e os coleóptilos podem morrer.\n\nControle: Utilização de pulverização com produtos químicos, rotação de cultura, e eliminação de gramíneas das proximidades da área cultivada.\n\n\n\n",
                    titulo:
                        "Mancha parda/Helminthosporiose, mancha foliar (Bipolaris oryzae)",
                  )
                },
              ),
              SubCard(
                // Cards da Tela  de doenças
                titulo: "Escaldadura.",
                rota: 'Content',
                imagem:
                    "assets/agronomia/arroz/doencas/arroz_doencas_escaldadurafolha.png",
                args: {
                  "dados": ConteudosModel(
                      imagem:
                          "assets/agronomia/arroz/doencas/arroz_doencas_escaldadurafolha.png",
                      conteudo:
                          "Culturas Afetadas: Arroz.\n\n      Sua ocorrência se dá em locais cuja estação de cultivo caracteriza-se por baixas temperaturas e umidades elevada.\n\n Danos:\n      Com o desenvolvimento da doença, as manchas coalescem e secam, destruindo uma grande porção da áreas foliar.\n\n  Controle:\n       Realizar tratamento das sementes com fungicidas específicos, registrados pela cultura.\n\n\n\n",
                      titulo: "Escaldadura(Rhynchosporium secalis)")
                },
              ),
              SubCard(
                // Cards da Tela  de doenças
                titulo: "Mancha\nBarrenta.",
                rota: 'Content',
                imagem:
                    "assets/agronomia/arroz/doencas/arroz_doencas_queimaGlumelas.png",
                args: {
                  "dados": ConteudosModel(
                    imagem:
                        "assets/agronomia/arroz/doencas/arroz_doencas_queimaGlumelas.png",
                    conteudo:
                        "Culturas Afetadas: Arroz, Milho, Sorgo.\n\n      Esta doença é importante onde o florescimento e a maturação de grãos ocorrem em períodos chuvosos e de alta umidade relativa ao ar.\n\n Controle:\n     Realizar alteração na época de plantio, uso de cultivares resistentes, e em última instância, o tratamento químico de sementes.\n\n\n\n",
                    titulo:
                        "Mancha Barrenta / Queima das glumelas(Phoma sorghina)",
                  )
                },
              ),
            ]),
        "cor": Color(0xFFbdbebd)
      },
    ),

    SubCard(
      color: Color(0XFFedae51),
      titulo: "Café",
      rota: 'ConteudoPlantio',
      imagem: "assets/agronomia/cafe.png",
      args: {
        "dados": SubCardsModel(
            // Cards da Tela  que tem o carrocel de fotos
            titulo: "Café",
            conteudo:
                "     O café veio das terras altas da Etiópia, chegou ao Brasil em 1727, ele é uma bebida consumida em vários países.",
            imagens: [
              "assets/agronomia/cafe/cafe_scroll/cafe1.jpg",
              "assets/agronomia/cafe/cafe_scroll/café2.jpg"
            ],
            pragas: [
              SubCard(
                // Cards da Tela  de pragas
                titulo: "Broca do\nCafé.",
                rota: 'Content',
                imagem:
                    "assets/agronomia/cafe/pragas/feijao_pragas_brocacafe.png",
                args: {
                  "dados": ConteudosModel(
                      imagem:
                          "assets/agronomia/cafe/pragas/feijao_pragas_brocacafe.png",
                      conteudo:
                          'Culturas Afetadas: Café, e todas as culturas com ocorrência do alvo biológico.\n\n     Esta praga é bastante considerada, por conta que ataca os frutos independente do estágio de maturação.\n\n  Danos:\n      A qualidade do café é prejudicada, e ocorre perda de peso, resultando em um produto de tipo e valor comercial inferiores.\n\n Controle:\n       Controle químico - realizar pulverizações e monitoramentos.\n\n       Controle cultural - Destruir cafezais velhos e abandonados.\n\n        Controle Biológico: um dos importantes inimigos naturais da broca é a vespa-da-costa-do-marfim.\n\n\n\n',
                      titulo: "Broca do café(Hypothenemus hampei)")
                },
              ),
              SubCard(
                // Cards da Tela  de pragas
                titulo: "Bicho\nMineiro.",
                rota: 'Content',
                imagem:
                    "assets/agronomia/cafe/pragas/feijao_pragas_bichomineiro.png",
                args: {
                  "dados": ConteudosModel(
                      imagem:
                          "assets/agronomia/cafe/pragas/feijao_pragas_bichomineiro.png",
                      conteudo:
                          "Culturas Afetadas: Café.\n\nSinônimos: Cemiostoma coffeella, Elachista coffeella e Perileucoptera coffeella.\n\n      A mariposa é a principal praga da cultura do café, ela possui hábito noturno e o seu ataque ocorre durante todo o ano, e seu pico é entre outubro e junho.\n\nDanos:\n       A lagarta causa destruição do parênquima, elas vão secando e a parte atacada vai aumentando com o desenvolvimento da lagarta, os sintomas são mais visíveis na parte alta da planta, onde há um desfolhamento.\n\n  Controle:\n     Utilizar inseticidas específicos, sem prejudicar os inimigos naturais. outra medida é eliminar as ervas daninhas dos cafezais, o que diminui a ação da praga.\n\n\n\n",
                      titulo: "Bicho mineiro(Leucoptera coffeella)")
                },
              ),
              SubCard(
                // Cards da Tela  de pragas
                titulo:
                    "Ácaro\nVermelho.",
                rota: 'Content',
                imagem:
                    "assets/agronomia/cafe/pragas/feijao_pragas_acarovermelho.png",
                args: {
                  "dados": ConteudosModel(
                      imagem:
                          "assets/agronomia/cafe/pragas/feijao_pragas_acarovermelho.png",
                      conteudo:
                          "Culturas Afetadas: Café.\n      Seus ataques mais intensos são observados no período seco.\n\n Danos:\n      As folhas ao serem atacadas, ficam bronzeadas e perdem o brilho, quando mais severos, os ataques provocam quedas das folhas.\n\n  Controle:\n     Uso de acaricidas específicos, obter cuidado no uso de inseticidas.\n\n\n\n",
                      titulo:
                          "Ácaro vermelho/Aranha vermelha do cafeeiro (Oligonychus ilicis)")
                },
              ),
              SubCard(
                // Cards da Tela  de pragas
                titulo: "Cigarrinha.",
                rota: 'Content',
                imagem:
                    "assets/agronomia/cafe/pragas/feijao_pragas_cigarrinhas.png",
                args: {
                  "dados": ConteudosModel(
                      imagem:
                          "assets/agronomia/cafe/pragas/feijao_pragas_cigarrinhas.png",
                      conteudo:
                          "Culturas Afetadas: Café, e Citros.\n\n     Os adultos medem em torno de 12 mm, têm o corpo robusto e de coloração marrom-avermelhada, levemente violácea.\n\n  Danos:\n      Ela suga a seiva do xilema das plantas, ela também transmite a bactéria, agente da doença chamada de amarelinho.\n\nControle:\n     Controle químico, e uso de inseticidas.\n\n\n\n",
                      titulo:
                          "Cigarrinha/Cigarrinha da CVC (Oncometopia facialis)")
                },
              ),
            ],
            doencas: [
              SubCard(
                // Cards da Tela  de doenças
                titulo: "Ferrugem do\nCafeeiro.",
                rota: 'Content',
                imagem:
                    "assets/agronomia/cafe/doencas/cafe_doencas_ferrugem.png",
                args: {
                  "dados": ConteudosModel(
                      imagem:
                          "assets/agronomia/cafe/doencas/cafe_doencas_ferrugem.png",
                      conteudo:
                          "Culturas Afetadas: Cacau, Café, e todas as culturas com ocorrência do alvo biológico.\n\n      É um patógeno que provoca prejuízos durante os anos de alta produção da cultura.\n\n  Danos:\n      Ela provoca queda precoce das folhas e seca dos ramos.\n\n  Controle:\n     Uso de Cultivares resistentes, e fungicidas.\n\n\n\n",
                      titulo:
                          "Ferrugem do cafeeiro/Ferrugem (Hemileia vastatrix)")
                },
              ),
              SubCard(
                // Cards da Tela  de doenças
                titulo:
                    "Mancha de\nPhoma.",
                rota: 'Content',
                imagem:
                    "assets/agronomia/cafe/doencas/cafe_doencas_manchaphoma.png",
                args: {
                  "dados": ConteudosModel(
                      imagem:
                          "assets/agronomia/cafe/doencas/cafe_doencas_manchaphoma.png",
                      conteudo:
                          "Culturas Afetadas: Café.\n\n     Ela é causada por diferentes fatores, sobressaindo-se as condições climáticas desfavoráveis, má nutrição das plantas e ocorrência de pragas e doenças.\n\n  Danos:\n      Reduz a produção do ano e do próximo, além de tornar uma bebida de qualidade inferior.\n\n  Controle:\n     Seleção de áreas de plantio, adubação equilibrada, uso de inseticidas.\n\n\n\n",
                      titulo:
                          "Seca de ponteiros/Mancha de Phoma (Phoma costaricensis)")
                },
              ),
              SubCard(
                // Cards da Tela  de doenças
                titulo: "Olho pardo.\n(Cercosporiose)",
                rota: 'Content',
                imagem:
                    "assets/agronomia/cafe/doencas/cafe_doencas_olhopardo.png",
                args: {
                  "dados": ConteudosModel(
                    imagem:
                        "assets/agronomia/cafe/doencas/cafe_doencas_olhopardo.png",
                    conteudo:
                        "Culturas Afetadas: Café, Café (Mudas).\n\n     Ela é uma das doenças mais antiga das Américas, ela causa desfolha e reduz a produção.\n\n  Danos:\n      As folhas atacadas caem rapidamente, ocorrendo desfolha e seca dos ramos.\n\n Controle:\n     Cuidados na formação das mudas, limpar sempre as semenrtes, manter uma fertilização equilibrada na lavoura, também utilizar fungicidas protetores.\n\n\n\n",
                    titulo: "Olho pardo/Cercosporiose (Cercospora coffeicola)",
                  )
                },
              ),
            ]),
        "cor": Color(0xFFedae51)
      },
    ),

    SubCard(
      color: Color(0xFFe1b82c),
      titulo: "Batata",
      rota: 'ConteudoPlantio',
      imagem: "assets/agronomia/batata.png",
      args: {
        "dados": SubCardsModel(
            // Cards da Tela  que tem o carrocel de fotos
            titulo: "Batata",
            conteudo:
                "      É uma das culturas mais importantes do mundo, e pode ser consumida em variadas formas e composições.",
            imagens: [
              "assets/agronomia/batata/batata_scroll/batata1.jpg",
              "assets/agronomia/batata/batata_scroll/batata2.jpg"
            ],
            pragas: [
              SubCard(
                // Cards da Tela  de pragas
                titulo: "Cigarrinha\nVerde.",
                rota: 'Content',
                imagem:
                    "assets/agronomia/batata/pragas/batata_pragas_cigarrinhaverde.png",
                args: {
                  "dados": ConteudosModel(
                    imagem:
                        "assets/agronomia/batata/pragas/batata_pragas_cigarrinhaverde.png",
                    conteudo:
                        'Culturas Afetadas: Algodão, Amendoim, Batata, Feijão, Feijão vagem, Mamão, Mandioca, Pinhão-manso.\n\n     Eles causam prejuízos por conta de suas picadas, com isso eles injetam toxinas na plantas atacadas.\n\n Danos:\n       Podem ser como consequência da penetração do estilete no floema da planta, além disso, também há a injeção de substâncias toxicogênicas durante a alimentação.\n\n Controle:\n       Controle químico das ninfas e adultos com inseticidas registrados para as culturas.\n\n\n\n',
                    titulo: "Cigarrinha verde(Empoasca kraemeri)",
                  )
                },
              ),
              SubCard(
                // Cards da Tela  de pragas
                titulo: "Bicho Tromba.\n(Broca da batatinha)",
                rota: 'Content',
                imagem:
                    "assets/agronomia/batata/pragas/batata_pragas_bichoelefante.png",
                args: {
                  "dados": ConteudosModel(
                    imagem:
                        "assets/agronomia/batata/pragas/batata_pragas_bichoelefante.png",
                    conteudo:
                        "Culturas Afetadas: Estes insetos apresentam hábito noturno e atacam várias solanáceas, como a batata, berinjela, fumo, jiló, pimentão e tomate.\n\n  Danos:\n      Os adulto deixam as folhas rendilhadas e atacam os tubérculos descobertos, as larvas fazem galerias nos tubérculos, nos quais podem servir de entrada para microorganismos indesejáveis.\n\n  Controle:\n       Pulverizações com inseticidas específicos.\n\n\n\n",
                    titulo:
                        "Bicho tromba/Broca da batatinha (Phyrdenus muriceus)",
                  )
                },
              ),
              SubCard(
                // Cards da Tela  de pragas
                titulo:
                    "Larva Minadora.\n(Mosca minadora)",
                rota: 'Content',
                imagem:
                    "assets/agronomia/batata/pragas/batata_pragas_moscamineradora.png",
                args: {
                  "dados": ConteudosModel(
                      imagem:
                          "assets/agronomia/batata/pragas/batata_pragas_moscamineradora.png",
                      conteudo:
                          "Culturas Afetadas: Agrião, Alface, Almeirão, Batata, Beterraba, Chicória, Crisântemo , Ervilha, Espinafre, Feijão, Feijão vagem, Melancia, Melão, Pepino, Rosa, Rúcula, Tomate, Tomate industrial, Tomate rasteiro industrial.\n\n Danos:\n      Elas abrem minas no interior, e se alimentam dos tecidos, destruindo parte ou totalmente da folha, causando secamento, em alguns casos, o desenvolvimento da cultura pode ser prejudicado.\n\nControle:\n       Pulverização com inseticidas piretróides, ou aplicação de inseticidas sistêmicos granulados específicos.\n\n\n\n",
                      titulo:
                          "Larva minadora/Mosca minadora (Liriomyza huidobrensis)")
                },
              ),
              SubCard(
                // Cards da Tela  de pragas
                titulo:
                    "Traça da\nBatatinha.",
                rota: 'Content',
                imagem:
                    "assets/agronomia/batata/pragas/batata_pragas_traca.png",
                args: {
                  "dados": ConteudosModel(
                      imagem:
                          "assets/agronomia/batata/pragas/batata_pragas_traca.png",
                      conteudo:
                          "Culturas Afetadas: Batata, Berinjela, Fumo, Pimentão, Tomate.\n\nEste inseto é uma importante praga para as solanáceas em geral, sendo mais importante na batatinha.\n\n Danos:\n      As lagartas atacam a folhas, até começarem a secar, logo depois abandonam as folhas, passando a atacar os frutos, até destruí-los.\n\n  Controle:\n       Pulverização com uso de inseticidas específicos.\n\n\n\n",
                      titulo:
                          "Traça da batatinha/Cegadeira (Phthorimaea operculella)")
                },
              ),
              SubCard(
                // Cards da Tela  de pragas
                titulo: "Lagarta\nRosca.",
                rota: 'Content',
                imagem:
                    "assets/agronomia/batata/pragas/batata_pragas_lagartarosca.png",
                args: {
                  "dados": ConteudosModel(
                      imagem:
                          "assets/agronomia/batata/pragas/batata_pragas_lagartarosca.png",
                      conteudo:
                          "Culturas Afetadas: Abóbora, Abobrinha, Acelga, Agrião, Alface, Alho, Batata, Batatayacon, Berinjela, Beterraba, Brócolis, Cebola, Chalota, Chicória, Chuchu, Couve, Couve-chinesa, Couve-de-bruxelas, Couve-flor, Espinafre, Fumo, Gengibre, Jiló, Mandioquinha-salsa, Maxixe, Melancia, Milho, Nabo, Pimenta, Pimentão, Quiabo, Rabanete, Repolho, Rúcula, Soja, Tomate, Trigo.\n\n      A fêmea deste inseto pode colocar em média 1000 ovos.\n\n  Danos:\n        A lagarta vive enterrada no solo, e sai a noite para cortar a plântulas rente ao solo, elas podem causar o sintoma de “Coração morto”, também pode provocar o perfilhamento excessivo destas, gerando uma touceira.\n\n Controle:\n     Em lugares com histórico desta praga, usar tratamento de sementes com inseticidas, e a eliminação antecipada de plantas invasoras hospedeiras, em áreas menores, distribuição de iscas preparadas com base de farelo, melaço, e inseticidas sem odor.\n\n\n\n",
                      titulo: "Lagarta rosca(Agrotis ipsilon)")
                },
              ),
            ],
            doencas: [
              SubCard(
                // Cards da Tela  de doenças
                titulo:
                    "Pinta Preta\nGrande.",
                rota: 'Content',
                imagem:
                    "assets/agronomia/batata/doencas/batata_doencas_pintapreta.png",
                args: {
                  "dados": ConteudosModel(
                      imagem:
                          "assets/agronomia/batata/doencas/batata_doencas_pintapreta.png",
                      conteudo:
                          "Culturas Afetadas: Alstroemeria, Batata, Berinjela, Beterraba, Cebola, Cravina, Cravo, Crisântemo, Jiló, Lisianthus, Pimenta, Pimentão, Rosa, Tomate, Tomate envarado, e todas as culturas com ocorrência do alvo biológico.\n\n     É uma das principais doenças, e ela é encontrada em todas as regiões produtoras de batata.\n\n  Danos:\n      Ele ataca toda a parte aérea da planta, surgem pequenas manchas escuras, depois crescem , maior número de lesões pode surgir em plantas com deficiência nutricional, em tubérculos, elas tendem a provocar podridão seca.\n\n Controle:\n     Usar alguns cultivares nacionais que têm resistência intermediária a pinta preta, como o Aracy e Contenda.\n\n\n\n",
                      titulo:
                          "Pinta preta grande/Mancha de alternaria (Alternaria solani)")
                },
              ),
              SubCard(
                // Cards da Tela  de doenças
                titulo:
                    "Canela-preta.\n(Podridão-mole)",
                rota: 'Content',
                imagem:
                    "assets/agronomia/batata/doencas/batata_doencas_podridaomole.png",
                args: {
                  "dados": ConteudosModel(
                    imagem:
                        "assets/agronomia/batata/doencas/batata_doencas_podridaomole.png",
                    conteudo:
                        "Culturas Afetadas: Batata.\n\n       Em alta umidade, e temperatura elevada e solos ácidos, ela constitui um problema sério nas crucíferas.\n\n  Danos:\n      A bactéria penetra tecidos da planta e causa encharcamento, o tecido torna-se mole, e após o órgão afetado apodrece rapidamente.\n\n  Controle:\n     Evitar ferimentos, equilibrar adubação, fazer rotação de culturas, controlar insetos, plantas cultivares ou híbridos resistentes a podridão negra.\n\n\n\n",
                    titulo:
                        "Canela-preta/Podridão-mole (Pectobacterium carotovorum)",
                  )
                },
              ),
              SubCard(
                // Cards da Tela  de doenças
                titulo: "Requeima.",
                rota: 'Content',
                imagem:
                    "assets/agronomia/batata/doencas/batata_doencas_requeima.png",
                args: {
                  "dados": ConteudosModel(
                      imagem:
                         "assets/agronomia/batata/doencas/batata_doencas_requeima.png",
                conteudo:
                          "Culturas Afetadas: Batata, Cacau, Pimentão, Tomate, Tomate envarado, Tomate rasteiro.\n\n      É a doença mais importante para diversas culturas de importância econômica.\n\nDanos:\n     Os primeiros sintomas são manchas pequenas, aumentado rapidamente,tornando escuras, amarronzadas ou pretas, podendo causar necrose dos tecidos e morte dos folíolos.\n\n  Controle:\n       Uso de variedades resistentes, e realizar pulverizações com fungicidas protetores e sistêmicos, registrados para as culturas.\n\n\n\n",
                      titulo: "Requeima(Phytophthora infestans)")
                  },
              ),
              SubCard(
                // Cards da Tela  de doenças
                titulo: "Sarna\nPrateada.",
                rota: 'Content',
                imagem:
                    "assets/agronomia/arroz/doencas/arroz_doencas_queimaGlumelas.png",
                args: {
                  "dados": ConteudosModel(
                    imagem:
                        "assets/agronomia/arroz/doencas/arroz_doencas_queimaGlumelas.png",
                    conteudo:
                        "O patógeno possui distribuição mundial, e é encontrado na maioria das regiões produtoras de batata.\n\n  Danos:\n      Inicia-se com a formação de manchas claras, que depois adquirem brilho prateado, quando a infecção é muito grande, pode se estender por todo o tubérculo.\n\n Controle:\n       Utilizar semente de batata de boa qualidade e livre do patógeno.\n\n\n\n",
                    titulo:
                        "Sarna prateada(Helminthosporium solani)",
                  )
                },
              ),
            ]),
        "cor": Color(0xFFe1b82c)
      },
    ),
  ]);
}
