import 'package:flutter/material.dart';
import 'package:sabak9_f4/user_model.dart';

class UserDetailPage extends StatelessWidget {
  const UserDetailPage({Key? key, required this.user}) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        /// title: const Text('User Detail Page'), (ordunda static beruu)
        title: Text(user.atyJonu),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircleAvatar(radius: 50, backgroundImage: NetworkImage(user.profileSurot)),
          Text(
            user.kesibi,
            style: const TextStyle(fontSize: 30, color: Colors.deepPurple),
          ),
          Text(
            // Objectti tyemakchaga alyp String tibinde kaytarat
            user.jash.toString(),
            style: const TextStyle(fontSize: 30, color: Colors.deepPurple),
          ),
          Text(
            // Objectti tyemakchaga alyp String tibinde kaytarat
            '${user.jash}',
            style: const TextStyle(fontSize: 30, color: Colors.deepPurple),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(user.tajriybaJolu),
          )
        ],
      ),
    );
  }
}
