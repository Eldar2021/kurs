import 'package:flutter/material.dart';

class ErrorWedget extends StatelessWidget {
  const ErrorWedget(this.errorText, {Key? key}) : super(key: key);

  final String errorText;

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(errorText));
  }
}
