import 'dart:async';
import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;
import 'package:sgaapp/entitys/todo_entity.dart';
import 'package:sgaapp/repositories/todo_repository_dao.dart';

part 'database.g.dart'; 

@Database(version: 1, entities: [TodoEntity])
abstract class AppDatabase extends FloorDatabase {
  TodoRepositoryDao get todoRepositoryDao;
}