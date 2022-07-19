import 'package:flutter/material.dart';

class DetailView extends StatefulWidget {
  const DetailView({super.key, this.text});

  final String? text;

  @override
  State<DetailView> createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  late String text;

  @override
  void initState() {
    text = widget.text ?? 'Text null keldi';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DetailView'),
      ),
      body: Center(
        child: Text(text),
      ),
    );
  }
}
