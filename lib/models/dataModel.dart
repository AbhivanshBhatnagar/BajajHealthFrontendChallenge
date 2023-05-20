class User {
  List<Employee> employees;

  User({required this.employees});

  factory User.fromJson(Map<String, dynamic> json) {
    var employeeList = json['employees'] as List;
    List<Employee> employees =
        employeeList.map((e) => Employee.fromJson(e)).toList();
    return User(employees: employees);
  }
}

class Employee {
  dynamic id;
  String? name;
  String? designation;
  List<String> skills;
  List<Project>? projects;

  Employee({
    required this.id,
    this.name,
    this.designation,
    required this.skills,
    this.projects,
  });

  factory Employee.fromJson(Map<String, dynamic> json) {
    var projectList = json['projects'] as List?;
    List<Project>? projects;
    if (projectList != null) {
      projects = projectList.map((e) => Project.fromJson(e)).toList();
    }
    return Employee(
      id: json['id'],
      name: json['name'],
      designation: json['designation'],
      skills: List<String>.from(json['skills']),
      projects: projects,
    );
  }
}

class Project {
  String name;
  String? description;
  List<TeamMember> team;
  List<Task>? tasks;

  Project({
    required this.name,
    this.description,
    required this.team,
    this.tasks,
  });

  factory Project.fromJson(Map<String, dynamic> json) {
    var taskList = json['tasks'] as List?;
    List<Task>? tasks;
    if (taskList != null) {
      tasks = taskList.map((e) => Task.fromJson(e)).toList();
    }
    var teamList = json['team'] as List;
    List<TeamMember> team =
        teamList.map((e) => TeamMember.fromJson(e)).toList();
    return Project(
      name: json['name'],
      description: json['description'],
      team: team,
      tasks: tasks,
    );
  }
}

class TeamMember {
  String? name;
  String role;

  TeamMember({
    this.name,
    required this.role,
  });

  factory TeamMember.fromJson(Map<String, dynamic> json) {
    return TeamMember(
      name: json['name'],
      role: json['role'],
    );
  }
}

class Task {
  dynamic id;
  String? name;
  String? status;

  Task({
    required this.id,
    this.name,
    this.status,
  });

  factory Task.fromJson(Map<String, dynamic> json) {
    return Task(
      id: json['id'],
      name: json['name'],
      status: json['status'],
    );
  }
}
