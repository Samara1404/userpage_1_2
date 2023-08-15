import 'package:flutter/material.dart';
import 'package:userpage_1_2/user_model.dart';

class UserDetailPage extends StatelessWidget {
  const UserDetailPage({Key? key, required this.user}) : super(key: key);
  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(user.name),
        ),
        body:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          CircleAvatar(
            radius: 80,
            backgroundImage: NetworkImage(user.profilePhoto),
          ),
          Text(
            user.job,
            style: TextStyle(fontSize: 30, color: Colors.blue),
          ),
          Text(
            '${user.yearsOld} years Old',
            style:
                TextStyle(fontSize: 20, color: Color.fromARGB(255, 6, 80, 139)),
          ),
          Padding(
            padding: const EdgeInsets.all(40),
            child: Text(user.careerObjective),
          ),
        ]));
  }
}
