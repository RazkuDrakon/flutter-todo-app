import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase{

  List toDoList = [];
  // reference the box
  final _myBox = Hive.box('mybox');

  // run this method if is the first time using this app
  void createInitialData(){
    toDoList = [
      ["Example Post-It", false],
    ];
  }

  // load the data
  void loadData(){
    toDoList = _myBox.get("TODOLIST");
  }

  //update database
  void updateDataBase(){
    _myBox.put("TODOLIST", toDoList);
  }
}