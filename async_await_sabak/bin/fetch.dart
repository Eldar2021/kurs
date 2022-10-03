// dio, http

import 'package:dio/dio.dart';

void main() async {
  var dio = Dio();
  final response = await dio.get('https://jsonplaceholder.typicode.com/posts');
  print('=============> $response');
  // await Future.delayed(Duration(seconds: 2));
  // print('-------------> $response');
}
