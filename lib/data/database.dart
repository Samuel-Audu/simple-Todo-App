import 'package:hive_flutter/hive_flutter.dart';

class TodoDatabase {
  List todoList = [];

  final _taskBox = Hive.box('taskbox');

  //run on first opening of the app
  void createInitialData() {
    todoList = [
      ['Default task', false],
    ];
  }

  //load the data from database
  void loadData() {
    todoList = _taskBox.get("TODOLIST");
  }

  //update database
  void updateDatabase() {
    _taskBox.put("TODOLIST", todoList);
  }
}
