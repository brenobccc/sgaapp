import 'package:floor/floor.dart';
import 'package:sgaapp/entitys/entity_base.dart';

@Entity(tableName: 'Todos')
class TodoEntity extends EntityBase {
  TodoEntity({
    int id,
    String createdAt,
    String updateAt,
    this.idade,
    this.animal,
    this.peso,
    this.descricao,
  }) : super(id, createdAt, updateAt);

  final String animal;
  final String peso;
  final String idade;
  final String descricao;
}
