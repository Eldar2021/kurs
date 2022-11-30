import 'package:flutter/material.dart';
import 'package:life_cyle/model/user_model.dart';
import 'package:life_cyle/pages/sign_up.dart';
import 'package:life_cyle/service/user_state.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late User? user;
  @override
  void initState() {
    super.initState();
    getUser();
  }

  Future<void> getUser() async {
    user = await service.getUser();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              leading: Text(user?.id ?? ''),
              title: Text(user?.name ?? ''),
              subtitle: Text(user?.lastName ?? ''),
              trailing: Text(user?.password ?? ''),
            ),
          ),
          ElevatedButton(
            onPressed: () async {
              await service.signOut();
              // ignore: use_build_context_synchronously
              await Navigator.pushAndRemoveUntil<void>(
                context,
                MaterialPageRoute(builder: (context) => SignUp()),
                (route) => false,
              );
            },
            child: const Text('sign out'),
          ),
          ElevatedButton(
            onPressed: () async {
              await service.delete();
              // ignore: use_build_context_synchronously
              await Navigator.pushAndRemoveUntil<void>(
                context,
                MaterialPageRoute(builder: (context) => SignUp()),
                (route) => false,
              );
            },
            child: const Text('delete account'),
          ),
        ],
      ),
    );
  }
}
