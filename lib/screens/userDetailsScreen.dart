import 'package:bajaj_frontend_challenge/models/dataModel.dart';
import 'package:bajaj_frontend_challenge/screens/projectScreen.dart';
import 'package:flutter/material.dart';

class UserDetailsPage extends StatefulWidget {
  final Employee employee;

  UserDetailsPage({required this.employee});

  @override
  State<UserDetailsPage> createState() => _UserDetailsPageState();
}

class _UserDetailsPageState extends State<UserDetailsPage> {
  String urlImage = "https://picsum.photos/200/300";

  @override
  Widget build(BuildContext context) {
    var skills = widget.employee.skills.join(", ");
    List<Project>? projects = widget.employee.projects;
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 16.0,
              ),
              Center(
                child: Hero(
                  tag: widget.employee.id,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(urlImage),
                    radius: 100.0,
                  ),
                ),
              ),
              SizedBox(
                height: 22.0,
              ),
              Text(
                ' ${widget.employee.name}',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 12.0,
              ),
              Text(
                '${widget.employee.designation}',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 12.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    skills.isEmpty ? "No Skills" : "Skills: $skills",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w300,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              SizedBox(
                height: 12.0,
              ),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 12.0, right: 12.0, bottom: 20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Text(
                        //   widget.employee.id.toString(),
                        //   textAlign: TextAlign.justify,
                        //   style: TextStyle(
                        //     fontSize: 16.0,
                        //   ),
                        // ),
                        ListTile(
                          title: Text("Projects"),
                          trailing: Icon(Icons.arrow_forward_ios),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProjectsScreen(
                                        widget.employee.projects)));
                          },
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
