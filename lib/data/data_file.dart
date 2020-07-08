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
                      conteudo: 'Eles recebem o nome de bicudo por terem uma cabeça prolongada, formando um“bico característico.”O Bicudo é uma das pragas chave do algodoeiro que contém maior relevância econômica na cultura do algodão, e pode atacar a cultura desde o início da floração até a colheita.ele é da família dos curculionídeos, de cor cinzenta ou castanha e contém mandíbulas afiadas. De origem da América Central, veio ao Brasil em 1983.Nas condições climáticas do Brasil, o inseto leva de 14 a 22 dias para completar o seu ciclo de desenvolvimento.\nControle:\n● Controle biológico.\nÉ aquele que ocorre pela ação constante de agentes biológicos\nnativos(entomopatógenos, predadores e/ou parasitóides) contra a praga,Esse controle é chamado natural porque ocorre sem a intervenção direta do homem na manipulação dos organismos benéficos\n● Controle Cultural.\n● Controle químico;\nO controle deve conter medidas integradas de manejo, que compreendem autilização de inseticidas químicos, uma vez tomada a decisão de controle\nquímico de uma determinada população de inseto-praga do algodoeiro, aescolha e o uso do produto devem ser criteriosos.medidas para controle:Plantio-isca.Tubo mata bicudo.Pulverização de inseticidas.Uma prática importante é a rotação de produtos com diferentes mecanismos de açãoO momento ideal para o controle do bicudo é quando a flor branca está totalmente abertadas 9h às 16h, período no qual o bicudo fica circulando;Pontos importantes:Escolha da cultivar,época de plantio, catação de botões florais, destruição dasoqueira e rotação de culturas.',
                      titulo: "Bicudo do Algodoeiro (Anthonomus grandis)")
                },
              ),
              SubCard(  // Cards da Tela  de pragas
                titulo: "Broca da Raiz.(Eutinobothrus brasiliensis)",
                rota: 'Content',
                imagem: "assets/agronomia/algodao/pragas/pragas/algodao_pragas_brocaraiz.png",
                args: {
                  "dados": ConteudosModel(
                      imagem: "assets/agronomia/algodao/pragas/pragas/algodao_pragas_brocaraiz.png",
                      conteudo: "Culturas Afetadas: Algodão\nDanos:Os danos são caracterizados pelo murchamento da plantas novas.Se alojando na raiz, impede e paralisa o crescimento da plantas, além de ocorrer uma mudança na cor das folhas, que ficam com um tom mais avermelhado, com isso elas murcham e secam, levando á morte da planta. Controle: Realizar pulverizações com inseticidas específicos, registrados para a cultura.",
                      titulo: "Broca da Raiz.(Eutinobothrus brasiliensis)")
                },
              ),
              SubCard(  // Cards da Tela  de pragas
                titulo: "Pulgão do algodoeiro(Aphis gossypii)",
                rota: 'Content',
                imagem: "assets/agronomia/algodao/pragas/pragas/algodao_pragas_pulgaoalgodoeiro.png",
                args: {
                  "dados": ConteudosModel(
                      imagem: "assets/agronomia/algodao/pragas/pragas/algodao_pragas_pulgaoalgodoeiro.png",
                      conteudo: "Culturas Afetadas: Abacate, Abacaxi, Abóbora, Abobrinha, Algodão, Alstroemeria,Anonáceas, Batata, Begônia, Cacau, Celósia, Crisântemo , Cupuaçu, Gérbera, Girassol,Guaraná, Hibisco, Kiwi, Mamão, Manga, Mangaba, Maracujá, Melancia, Melão, Orquídea,Pepino, Pimentão, Plantas ornamentais, Poinsétia , Quiabo, Romã, Rosa São insetos pequenos, de cor variando do amarelo ao verde, e vivem sobre folhas e brotos novos da planta.Danos:Eles sugam a seiva, produzindo o encarquilhamento das folhas e deformação dos brotos, e ao expelir um líquido açucarado, atraem formigas, o que contribui na formação de fumagina(Capnodium spp) o que dificulta a respiração e a fotossíntese da planta.\n Controle: Controle Químico, com uso de inseticidas, no tratamentos das sementes ou no solo, alguns principais são:\n● disulfoton.\n● acephate.\n● carbofuran.\n● imidacloprid.\n● aldicarb.\nElas irão poder proteger as plantas em até 25 Dias, reduzindo o\ndesenvolvimento de Pulgões\nControle Biológico,é de essencial importância a ação dos inimigos naturais na redução dos pulgões.",
                      titulo: "Pulgão do algodoeiro(Aphis gossypii)")
                },
              ),
              SubCard(  // Cards da Tela  de pragas
                titulo: "Helicoverpa Armigera.",
                rota: 'Content',
                imagem: "assets/agronomia/algodao/pragas/pragas/algodao_pragas_helicoverpaamigera.png",
                args: {
                  "dados": ConteudosModel(
                      imagem: "assets/agronomia/algodao/pragas/pragas/algodao_pragas_helicoverpaamigera.png",
                      conteudo: "Culturas Afetadas: Abóbora, Abobrinha, Aipo, Alface, Alfafa, Algodão, Algodão - OGM, Alho, Amendoim, Arroz, Batata, Berinjela, Beterraba, Brócolis, Café, Canola, Cebola, Chicória, Chuchu, Citros, Couve, Couve-flor, Ervilha, Espinafre, Feijão, Feijão vagem, Fumo, Gérbera, Girassol, Grão-de-bico, Jiló, Linhaça, Maçã, Melancia, Melão, Milheto, Milho, Morango, Pepino, Pêra, Pimenta, Pimentão, Plantas ornamentais, Quiabo, Repolho, Rosa, Rúcula, Soja, Sorgo, Todas as culturas com ocorrência do alvo biológico, Tomate, Trigo, Uva.\n Uma da principais pragas das culturas no mundo, A helicoverpa armigera ataca diversas culturas, mais no Brasil tem como foco Soja, Milho, e Algodão.\n\n Danos: se alimentam em todos os estágios de desenvolvimento da plantas, danificando todas as estruturas. \n\nControle: \nManejo integrado de pragas. Inseticidas Biológicos e Químicos, Seletivos aos inimigos naturais.",
                      titulo: "Helicoverpa Armigera.")
                },
              ),
              SubCard(  // Cards da Tela  de pragas
                titulo: "Percevejo Verde(Fede Fede - Nezara Viridula)",
                rota: 'Content',
                imagem: "assets/agronomia/algodao/pragas/pragas/algodao_pragas_percevejoverde.png",
                args: {
                  "dados": ConteudosModel(
                      imagem: "assets/agronomia/algodao/pragas/pragas/algodao_pragas_percevejoverde.png",
                      conteudo: "Culturas Afetadas: Girassol, Soja, Todas as culturas com ocorrência do alvo biológico Recentemente surgiu como uma nova praga na cultura do algodão.\nDanos:\nAo se alimentar, os percevejos injetam toxinas nos grãos e nos orifícios deixados pelo aparelho bucal dos insetos penetram microorganismos que determinam o chochamento dos grãos causando depreciação do produto no ato da comercialização\nControle: Produtos em pulverização, escolhendo aqueles mais seletivos aos inimigos naturais e menos tóxicos ao homem.",
                      titulo: "Percevejo Verde(Fede Fede - Nezara Viridula)")
                },
              ),
            ],
            doencas: [
              SubCard(  // Cards da Tela  de doenças
                titulo: "Mancha de Ramulária(Ramularia Areola).",
                rota: 'Content',
                imagem: "assets/agronomia/algodao/pragas/doencas/algodao_doencas_mancharamularia.png",
                args: {
                  "dados": 
                    ConteudosModel(
                        imagem: "assets/agronomia/algodao/pragas/doencas/algodao_doencas_mancharamularia.png",
                        conteudo: "A mancha de ramulária teve seu status alterado de doença secundária para uma das principais doenças da atualidade no algodoeiro.\nDanos:A mancha de ramulária atualmente é considerada a principal doença do algodoeiro no Brasil, e pode causar uma redução de até 35% na produtividade. Seus danos são relacionados à redução da área sadia das folhas, redução da fotossíntese, senescência antecipada, secamento foliar completo de desfolha precoce em situações de alta severidade. Controle: Os danos são mais expressivos entre o início do florescimento e a abertura dos primeiros capulhos.\nControle: Com a aplicação de fungicidas, se pode obter um controle da doença de forma eficaz, se forem iniciadas a partir dos primeiros sintomas. O atraso no início da primeira aplicação diminui a eficiência do controle e pode torná lo economicamente inviável. Outra forma e manejo da doença são os cultivares resistentes, por exemplo, o algodão BRS 371 RF, que possui resistência à ramulária e é tolerante ao herbicida glifosato.",
                        titulo: "Mancha de Ramulária(Ramularia Areola).")
                   
                },
              ),
              SubCard(  // Cards da Tela  de doenças
                titulo: "Ramulose(Colletotrichum gossypii var. cephalosporioides)",
                rota: 'Content',
                imagem: "assets/agronomia/algodao/pragas/doencas/algodao_doencas_mancharamularia.png",
                args: {
                  "dados": ConteudosModel(
                      imagem: "assets/agronomia/algodao/pragas/doencas/algodao_doencas_mancharamularia.png",
                      conteudo: "Ela foi encontrada pela primeira vez em Rancharia-SP(1936), e atualmente se encontra em todas as regiões do país onde há a cultiva do algodoeiro. Danos: A ramulose se manifesta em plantas de qualquer idade, Primeiramente, os sintomas aparecem nas folhas novas, na forma de manchas necróticas, meio circulares Ao afetar novas plantas, as gemas terminais dos ramos extranumerários poderão sofrer novas infecções, e podem estimular o desenvolvimento de novas gemas com sua morte.\nControle: A medida principal é a utilização de variedades com resistência ao patógeno. Há os seguintes tipos:\na) resistentes: EPAMIG 3, EPAMIG 4, PR 380/82, IAC 21, CS 50, Deltapine Acala 90;\nb) medianamente resistentes: CNPA Precoce 1, LAC 19, LAC 22 e LAC 20;\nc) suscetíveis: Nu-15-79/117, CNPA Acala 1, IAPAR 4 PR-1. Outro maneira de controlar, é com o uso de semente Sadias.",
                      titulo: "Ramulose(Colletotrichum gossypii var. cephalosporioides)")
                },
              ),

              SubCard(  // Cards da Tela  de doenças
                titulo: "Fusariose/Murcha de Fusarium (Fusarium oxysporum f.sp.vasinfectum)",
                rota: 'Content',
                imagem: "assets/agronomia/algodao/pragas/doencas/algodao_doencas_mancharamularia.png",
                args: {
                  "dados": ConteudosModel(
                      imagem: "assets/agronomia/algodao/pragas/doencas/algodao_doencas_mancharamularia.png",
                      conteudo: "Culturas Afetadas: Algodão É a doença principal do algodoeiro de ciclo anual,E são cultivadas principalmente nos Estados de São Paulo e Paraná. Danos: O quadro sintomatológico de plantas doentes é bastante variável, dependendo das condições ambientais, e outros demais fatores. Alguns dos sintomas iniciais começam pelas basais, elas se amarelam e exibem crestamento do limbo e caem, A murcha das folhas e morte prematura ocorre em variedades suscetíveis. Controle: Uso de variedades resistentes.além de outras medidas como: ● Rotação de cultura. ● Tratamento das sementes com tíofanato ou tiabendazole ● plantio em áreas indenes ● plantios de variedades e híbridos resistentes.",
                      titulo: "Fusariose/Murcha de Fusarium (Fusarium oxysporum f.sp.vasinfectum)")
                },
              ),
            ])
      },
    ),

    SubCard(
      titulo: "Amendoim",  
      rota: 'ConteudoPlantio',
      imagem: "assets/agronomia/amendoin.png",  
      args: {
        "dados": SubCardsModel(// Cards da Tela  que tem o carrocel de fotos
            titulo: "Amendoim",  
            conteudo:  
                "O amendoim é uma leguminosa de origem vegetal, da família Fabaceae. É uma planta originária da América do Sul e é hoje um dos principais cultivos da África, onde faz parte de vários pratos da culinária.",
            imagens: [  
              "assets/agronomia/amendoim/amendoim_scroll/amendoin1.jpg",
              "assets/agronomia/amendoim/amendoim_scroll/amendoin2.jpg"
            ],
            pragas: [
              SubCard(   // Cards da Tela  de pragas
                titulo: "Lagarta do pescoço vermelho(Stegasta bosquella)",
                rota: 'Content',
                imagem: "assets/agronomia/amendoim/pragas/amendoin_pragas_lagartacapin.png",
                args: {
                  "dados": ConteudosModel(
                      imagem: "assets/agronomia/amendoim/pragas/amendoin_pragas_lagartacapin.png",
                      conteudo: 'Culturas Afetadas: Alfafa, Algodão, Amendoim, Arroz, Batata, Brócolis, Cana-de-açúcar,Coco, Couve, Couve-flor, Fumo, Gengibre, Mandioca, Maracujá, Milho, Pastagens,Repolho, Seringueira (Floresta implantada), Soja, Trigo.Em alguns locais, pode ocorrer alta infestação da praga.Ela atua em diversas culturas de importância econômica.\nDanos:Inicia-se em capinzais localizados em tornos das lavouras, elas atacam as folhas, deixando somente a nervura central.  Controle: Controle químico localizado sobre área infestada. O inseticida pode ser aplicado tanto por pulverização convencional como via água de irrigação por aspersão. Usar produtos registrados para as culturas.',
                      titulo: "Lagarta do pescoço vermelho(Stegasta bosquella)")
                },
              ),
              SubCard(  // Cards da Tela  de pragas
                titulo: "Lagarta dos capinzais(Mocis Lapites)",
                rota: 'Content',
                imagem: "assets/agronomia/amendoim/pragas/amendoin_pragas_lagartacapin.png",
                args: {
                  "dados": ConteudosModel(
                      imagem: "assets/agronomia/amendoim/pragas/amendoin_pragas_lagartacapin.png",
                      conteudo: " Culturas Afetadas: Alfafa, Algodão, Amendoim, Arroz, Batata, Brócolis, Cana-de-açúcar, Coco, Couve, Couve-flor, Fumo, Gengibre, Mandioca, Maracujá, Milho, Pastagens,Repolho, Seringueira (Floresta implantada), Soja, Trigo. Em alguns locais, pode ocorrer alta infestação da praga. Ela atua em diversas culturas de importância econômica. Danos: Inicia-se em capinzais localizados em tornos das lavouras, elas atacam as folhas, deixando somente a nervura central. Controle: Controle químico localizado sobre área infestada. O inseticida pode ser aplicado tanto por pulverização convencional como via água de irrigação por aspersão. Usar produtos registrados para as culturas.",
                      titulo: "Lagarta dos capinzais(Mocis Lapites)")
                },
              ),
              SubCard(  // Cards da Tela  de pragas
                titulo: "Percevejo castanho(Scaptocoris castanea)",
                rota: 'Content',
                imagem: "assets/agronomia/amendoim/pragas/amendoin_pragas_percevejocastanho.png",
                args: {
                  "dados": ConteudosModel(
                      imagem: "assets/agronomia/amendoim/pragas/amendoin_pragas_percevejocastanho.png",
                      conteudo: "Culturas Afetadas: Algodão, Milho, Todas as culturas com ocorrência do alvo biológico\nA ocorrência deste inseto é incerta, o que dificulta no tratamento da mesma.\nDanos:\nEl0es se alimentam nas raízes e sugam a seiva, o ataque severo causa morte da planta, seus sintomas de ataque variam de acordo com a intensidade e época do ataque, e muitas vezes são confundidos por deficiência nutricional ou doença.\nControle:\nControle biológico com o fungo Metarhizium anisopliae.",
                      titulo: "Percevejo castanho(Scaptocoris castanea)")
                },
              ),
              SubCard(  // Cards da Tela  de pragas
                titulo: "Cigarrinha verde(Empoasca kraemeri)",
                rota: 'Content',
                imagem: "assets/agronomia/amendoim/pragas/amendoin_pragas_cigarrinhaverde.png",
                args: {
                  "dados": ConteudosModel(
                      imagem: "assets/agronomia/amendoim/pragas/amendoin_pragas_cigarrinhaverde.png",
                      conteudo: "Culturas Afetadas: Algodão, Amendoim, Batata, Feijão, Feijão vagem, Mamão, Mandioca,Pinhão-manso Eles causam prejuízos por conta de suas picadas, com isso eles injetam toxinas na plantas atacadas. \nDanos:\n Podem ser como consequência da penetração do estilete no floema da planta, além disso, também há a injeção de substâncias toxicogênicas durante a alimentação. Controle: Controle químico das ninfas e adultos com inseticidas registrados para as culturas.",
                      titulo: "Cigarrinha verde(Empoasca kraemeri)")
                },
              ),
              SubCard(  // Cards da Tela  de pragas
                titulo: "Traça (Corcyra cephalonica)",
                rota: 'Content',
                imagem: "assets/agronomia/amendoim/pragas/amendoin_pragas_traca.png",
                args: {
                  "dados": ConteudosModel(
                      imagem:  "assets/agronomia/amendoim/pragas/amendoin_pragas_traca.png",
                      conteudo: "Culturas Afetadas: Amendoim, Cacau, Soja Ela é considerada uma praga de superficie, atacando o embriâo dos grãos expostos.",
                      titulo: "Traça (Corcyra cephalonica)")
                },
              ),
            ],
            doencas: [
                 SubCard(  // Cards da Tela  de doenças
                titulo: "Mancha castanha / Mancha foliar (Cercospora arachidicola)",
                rota: 'Content',
                imagem: "assets/agronomia/amendoim/doencas/amendoin_doencas_manchamcastanha.png",
                args: {
                  "dados": ConteudosModel(
                      imagem: "assets/agronomia/amendoim/doencas/amendoin_doencas_manchamcastanha.png",
                      conteudo: "Culturas Afetadas: Amendoim, Feijão-caupi\nEla é considerada uma das principais doenças foliar do amendoim, no qual impacta fortemente nas reduções dos rendimentos quando o nível de desfolhação é alto, A infecção começa nas folhas mais velhas e progride para as mais jovens, os folíolos severamente infectados caem com facilidade, provocando a desfolhação e a consequente redução dos rendimentos. controle: Realizar rotações de cultura com cultivos não hospedeiros, Retirar do campo os restos de culturas infectadas ou contaminados e queimá-los ou enterrá-los por aração profunda do próprio campo.",
                      titulo: "Mancha preta(Pseudocercospora personata)")
                },
              ),
              
              SubCard(  // Cards da Tela  de doenças
                titulo: "Mancha preta(Pseudocercospora personata)",
                rota: 'Content',
                imagem: "assets/agronomia/amendoim/doencas/amendoin_doencas_manchapreta.png",
                args: {
                  "dados": ConteudosModel(
                      imagem: "assets/agronomia/amendoim/doencas/amendoin_doencas_manchapreta.png",
                      conteudo: "Culturas Afetadas: Amendoim, Feijão-caupi\nEla é considerada uma das principais doenças foliar do amendoim, no qual impacta fortemente nas reduções dos rendimentos quando o nível de desfolhação é alto, A infecção começa nas folhas mais velhas e progride para as mais jovens, os folíolos severamente infectados caem com facilidade, provocando a desfolhação e a consequente redução dos rendimentos. controle: Realizar rotações de cultura com cultivos não hospedeiros, Retirar do campo os restos de culturas infectadas ou contaminados e queimá-los ou enterrá-los por aração profunda do próprio campo.",
                      titulo: "Mancha preta(Pseudocercospora personata)")
                },
              ),
              SubCard(  // Cards da Tela  de doenças
                titulo: "Rhizoctoniose.",
                rota: 'Content',
                imagem: "assets/agronomia/amendoim/doencas/amendoin_doencas_rhizoctoniose.png",
                args: {
                  "dados": ConteudosModel(
                      imagem: "assets/agronomia/amendoim/doencas/amendoin_doencas_rhizoctoniose.png",
                      conteudo: "Esta é uma das doenças mais comuns, e que causa maiores prejuízos na plantas.\nSintomas:Os sintomas mais graves aparecem na primavera, pouco depois da plantação, ocorrendoalgo como Atraso no desenvolvimento da planta, e descoloração dos caules, necrose dotecido vascular, e pigmentações púrpuras nas folhas Controle: O tratamento da semente com fungicidas e as mesmas práticas culturais recomendadas para controle da mesma.",
                      titulo: "Rhizoctoniose.")
                },
              ),
              SubCard(  // Cards da Tela  de doenças
                titulo: "Mancha Barrenta",
                rota: 'Content',
                imagem: "assets/agronomia/amendoim/doencas/amendoin_doencas_manchabarrenta.png",
                args: {
                  "dados": ConteudosModel(
                      
                imagem: "assets/agronomia/amendoim/doencas/amendoin_doencas_manchabarrenta.png",
                      conteudo: "Culturas afetadas: Amendoim É uma doença de importância secundária,que ocorre no terço final do ciclo vegetativo do amendoim.\nSintomas: Inicia-se com pequenas manchas pardas, depois elas coalescem tomando grandes áreas foliares e tornando-se visíveis na superfície inferior. Controle: Realizar rotação de culturas, incorporação de restos de aração profunda e destruição de plantas voluntárias",
                      titulo: "Mancha Barrente")
                },
              ),
            ])
      },
    ),
 
  
  
  
  ]);
}
