import 'package:flutter/material.dart';
import 'tiles.dart';
import 'package:provider/provider.dart';
import 'package:to_do/models/data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              taskTitle: task.name,
              isChecked: task.isDone,
              checkBoxCallBack: (checkBoxState) {
                taskData.updateTask(task);
              },
              longPressCallback: () {
                taskData.deletTask(task);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
