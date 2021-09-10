import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';

class AddTaskSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTask;

    return Container(
      padding: EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Add Task',
            style: TextStyle(
              color: Colors.redAccent,
              fontSize: 30.0,
            ),
            textAlign: TextAlign.center,
          ),
          TextField(
            cursorColor: Colors.redAccent,
            style: TextStyle(
              fontSize: 20.0,
            ),
            onChanged: (value) {
              newTask = value;
            },
            decoration: InputDecoration(
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.redAccent,
                  width: 5.0,
                ),
              ),
            ),
            autofocus: true,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20.0,
          ),
          FlatButton(
            padding: EdgeInsets.all(16.0),
            color: Colors.redAccent,
            child: Text(
              'Add',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 20.0,
              ),
            ),
            onPressed: () {
              if (newTask != null) {
                Provider.of<TaskData>(context, listen: false).addTask(newTask);
                Navigator.pop(context);
              }
            },
          ),
        ],
      ),
    );
  }
}
