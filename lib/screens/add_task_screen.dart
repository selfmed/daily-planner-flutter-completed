import 'package:daily_planner/models/task.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:daily_planner/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    String? taskName;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      ),
      padding: EdgeInsets.all(18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Add Task',
            style: TextStyle(
              fontSize: 30,
              color: Colors.tealAccent,
            ),
            textAlign: TextAlign.center,
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newString){
              taskName = newString;
            },
          ),
          TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.tealAccent),
            ),
            onPressed: () {
              Provider.of<TaskData>(context, listen: false).addTask(taskName!);
              Navigator.pop(context);
            },
            child: Text('Submit'),
          )
        ],
      ),
    );
  }
}
