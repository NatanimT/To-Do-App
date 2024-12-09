import 'package:flutter/material.dart';
//import 'package:to_do/models/data.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function(bool?) checkBoxCallBack;
  final VoidCallback longPressCallback;

  TaskTile(
      {required this.taskTitle,
      required this.isChecked,
      required this.checkBoxCallBack,
      required this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
        onChanged: checkBoxCallBack, //toggleCheckBoxState,
      ),
    );
  }
}
