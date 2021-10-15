import 'package:daily_planner/models/task_data.dart';
import 'package:daily_planner/screens/tasks_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskData>(
      create: (context) {
        return TaskData();
      },
      child: MaterialApp(
        theme: ThemeData.dark(),
        home: TasksScreen(),
      ),
    );
  }
}
