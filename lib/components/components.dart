import 'package:bajaj_frontend_challenge/models/dataModel.dart';
import 'package:bajaj_frontend_challenge/screens/userDetailsScreen.dart';
import 'package:flutter/material.dart';

// import 'package:searching_list_with_json/presentation/screens/employee_details_page.dart';

class UserTile extends StatelessWidget {
  final Employee employee;

  UserTile({required this.employee});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => UserDetailsPage(employee: employee)));
        },
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              gradient: LinearGradient(
                colors: [Color(0xffECEFF1), Color(0xffCFD8DC)],
              )),
          height: MediaQuery.of(context).size.height * 0.15,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: CircleAvatar(
                  maxRadius: 35,
                  backgroundImage:
                      NetworkImage("https://picsum.photos/200/300"),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("${employee.name}"),
                  Text("${employee.designation}"),
                  Text("${employee.skills.join(",")}")
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
// Padding(
//       padding: EdgeInsets.symmetric(horizontal: 10.0),
//       child: Column(
//         children: [
//           ListTile(
//             leading: Hero(
//               tag: employee.id,
//               child: CircleAvatar(
//                 backgroundImage: NetworkImage("https://picsum.photos/200/300"),
//               ),
//             ),
//             title: Text("${employee.name}"),
//             subtitle: Text('${employee.designation}'),
//             onTap: () {
//               Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) =>
//                           UserDetailsPage(employee: employee)));
//             },
//           ),
//           Divider(
//             thickness: 2.0,
//           ),
//         ],
//       ),
//     );