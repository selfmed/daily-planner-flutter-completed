import 'dart:collection';

import 'package:flutter/material.dart';
import 'task.dart';


class TaskData extends ChangeNotifier {

  List<Task> _tasksList = [
    Task(name: 'Task 1'),
    Task(name: 'Task 2'),
    Task(name: 'Task 3'),
  ];

  UnmodifiableListView<Task> get tasksList{
    return UnmodifiableListView(_tasksList);
  }

  int get tasksCount {
    return _tasksList.length;
  }

  void addTask(String newTaskName){
    final task = Task(name: newTaskName);
    _tasksList.add(task);
    notifyListeners();
  }

  void updateTask(Task task){
    task.isCompletedToggle();
    notifyListeners();    
  }

  void deleteTask(Task task){
    _tasksList.remove(task);
    notifyListeners();
  }

}