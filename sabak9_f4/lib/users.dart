import 'package:flutter/material.dart';
import 'package:sabak9_f4/user_data.dart';
import 'package:sabak9_f4/user_detail_page.dart';

class UsersPage extends StatefulWidget {
  const UsersPage({Key? key}) : super(key: key);

  @override
  State<UsersPage> createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {
  @override

  /// BuildContext (flutter address)
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Users Page'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: users.length,
        itemBuilder: (context, index) {
          print(index);
          print(users[index].atyJonu);
          final user = users[index];
          return ListTile(
            /// onTap:  (){} ---> anonim funksia
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => UserDetailPage(user: user),
                ),
              );
            },
            title: Text('${user.atyJonu} Kyrgyz'),
            subtitle: Text('${user.kesibi} ${user.jash} jashta'),
            leading: CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(user.profileSurot),
            ),
            trailing: const Icon(Icons.chevron_right),
          );
        },
      ),
    );
  }
}

/*
import 'package:flutter/material.dart';

class UsersPage extends StatefulWidget {
  const UsersPage({Key? key}) : super(key: key);

  @override
  State<UsersPage> createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {
  Widget kuruu(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('kuruu')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return kuruu(context);
  }
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: const Text('Users Page'),
  //     ),
  //     body: ListView.builder(
  //       padding: const EdgeInsets.all(8),
  //       itemCount: users.length,
  //       itemBuilder: (context, index) {
  //         print(index);
  //         print(users[index].atyJonu);
  //         final user = users[index];
  //         return ListTile(
  //           title: Text('${user.atyJonu} Kyrgyz'),
  //           subtitle: Text('${user.kesibi} ${user.jash} jashta'),
  //           leading: CircleAvatar(
  //             radius: 20,
  //             backgroundImage: NetworkImage(user.profileSurot),
  //           ),
  //           trailing: const Icon(Icons.chevron_right),
  //         );
  //       },
  //     ),
  //   );
  // }
}

*/
