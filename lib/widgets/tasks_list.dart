import 'package:daily_planner/models/task_data.dart';
import 'package:daily_planner/widgets/task_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:daily_planner/models/task.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            Task task = taskData.tasksList[index];
            
            return TaskTile(
              taskTitle: task.name,
              isChecked:
                  task.isCompleted,
              isTaskDoneCallback: (newValue) {
                taskData.updateTask(task);
              },
              removeTaskCallback: (){
                taskData.deleteTask(task);
              },
            );
          },
          itemCount: taskData.tasksList.length,
        );
      },
    );
  }
}
