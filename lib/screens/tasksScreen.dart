import 'package:bajaj_frontend_challenge/models/dataModel.dart';
import 'package:flutter/material.dart';

class TasksScreen extends StatefulWidget {
  List<Task> userTasks = [];
  TasksScreen(List<Task>? tasks) {
    userTasks = tasks == null ? [] : tasks;
  }

  @override
  State<TasksScreen> createState() => _ProjectsScreenState();
}

class _ProjectsScreenState extends State<TasksScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: widget.userTasks.isEmpty
              ? Text('No Tasks to Show')
              : ListView.builder(
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(widget.userTasks[index].name.toString()),
                      subtitle: Text(widget.userTasks[index].status.toString()),
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) =>
                        //         TasksScreen(widget.userProjects[index].tasks),
                        //   ),
                        // );
                      },
                    );
                  },
                  itemCount: widget.userTasks.length,
                ),
        ),
      ),
    );
  }
}
