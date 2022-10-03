import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  dynamic res;
  dynamic s1 = 1;

  fetchData() async {
    final dio = Dio();
    await Future.delayed(const Duration(seconds: 3));
    res = await dio.get('https://jsonplaceholder.typicode.com/posts');

    setState(() {
      s1 = res;
    });
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage $s1'),
      ),
      body: Center(
        child: res == null ? const CircularProgressIndicator() : Text('$res'),
      ),
    );
  }
}
