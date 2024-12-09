import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//import 'task_screen.dart';
import 'package:to_do/models/data.dart';
//import 'package:to_do/models/task.dart';

class AddTaskScreen extends StatelessWidget {
  late String newTaskTitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 17, 17, 17),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            Text(
              'Add Task',
              style: TextStyle(
                fontSize: 30,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText) {
                newTaskTitle = newText;
              },
            ),
            TextButton(
              style: ButtonStyle(),
              onPressed: () {
                Provider.of<TaskData>(context, listen: false)
                    .addTask(newTaskTitle);
                Navigator.pop(context);
              },
              child: Text(
                'Add',
                style: TextStyle(color: Colors.lightBlueAccent, fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
