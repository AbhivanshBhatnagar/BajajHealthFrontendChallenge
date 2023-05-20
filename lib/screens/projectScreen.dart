import 'package:bajaj_frontend_challenge/models/dataModel.dart';
import 'package:bajaj_frontend_challenge/screens/tasksScreen.dart';
import 'package:flutter/material.dart';

class ProjectsScreen extends StatefulWidget {
  List<Project> userProjects = [];
  ProjectsScreen(List<Project>? projects) {
    userProjects = projects == null ? [] : projects;
  }

  @override
  State<ProjectsScreen> createState() => _ProjectsScreenState();
}

class _ProjectsScreenState extends State<ProjectsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: widget.userProjects.isEmpty
              ? Text('No Projects to Show')
              : ListView.builder(
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(widget.userProjects[index].name),
                      subtitle: Text(
                          widget.userProjects[index].description.toString()),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                TasksScreen(widget.userProjects[index].tasks),
                          ),
                        );
                      },
                    );
                  },
                  itemCount: widget.userProjects.length,
                ),
        ),
      ),
    );
  }
}
