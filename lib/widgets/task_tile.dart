import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool? isChecked;
  final String? taskTitle;

  final void Function(bool?)? isTaskDoneCallback;
  final void Function()? removeTaskCallback;

  TaskTile({
    this.isChecked,
    this.taskTitle,
    required this.isTaskDoneCallback,
    required this.removeTaskCallback,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle!,
        style: TextStyle(
            decoration: isChecked! ? TextDecoration.lineThrough : null),
      ),
      leading: Checkbox(
        value: isChecked,
        onChanged: isTaskDoneCallback,
      ),
      trailing: GestureDetector(
        onTap: removeTaskCallback,
        child: Icon(
          Icons.close,
          color: Colors.red,
        ),
      ),
    );
  }
}
