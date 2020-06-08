
import 'package:floor/floor.dart';
import 'package:sgaapp/entitys/todo_entity.dart';

import 'interfaces/repository_dao_interface.dart';

@dao
abstract class TodoRepositoryDao extends IRepositoryDaoInterface<TodoEntity> {
  @Query('SELECT * FROM Todos WHERE id = :id')
  Future<TodoEntity> getById(int id);

  @Query('SELECT * FROM Todos')
  Future<List<TodoEntity>> getAll();
}