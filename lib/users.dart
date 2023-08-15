import 'package:flutter/material.dart';

import 'user_detail_page.dart';
import 'users_data.dart';

String text =
    'I am a Flutter developer. When I came to know about flutter and after writing a few applications into flutter I deeply wanted to learn this programme. Hot Reload and Hot Restart in flutter was almost everything that amazed me. Almost every important UI elements  (App bar, navigation bar, drawer) were present in flutter SDK. so creating an app takes lesser time than ever before.1.	Animations were super smooth when they run and they are easy to achieve.2.	I can use flutter on almost every platform (Android, iOS, Desktop, Web).3.	Flutter is an open-source platform.  If I want some feature in SDK, it is easy for me now. I just go to its class file and make changes.4.	Like these, there are lots of flexibility we get in flutter and that’s why I choose to be a Flutter Developer.';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('User Page'),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(8),
        itemCount: users.length,
        itemBuilder: (context, index) {
          final User = users[index];
          return ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => UserDetailPage(user: User)));
            },
            title: Text(users[index].name),
            subtitle: Text('${User.job} ${User.yearsOld}'),
            leading: CircleAvatar(
              radius: 45,
              backgroundImage: NetworkImage(User.profilePhoto),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
          );
        },
      ),
    );
  }
}
