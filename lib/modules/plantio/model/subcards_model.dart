import 'package:sgaapp/components/sub_cards.dart';

class SubCardsModel {
  String titulo;
  List<String> imagens;
  String conteudo;
  List<SubCard> pragas;
  List<SubCard> doencas;
  SubCardsModel(
      {this.titulo, this.imagens, this.conteudo, this.pragas, this.doencas});
}
