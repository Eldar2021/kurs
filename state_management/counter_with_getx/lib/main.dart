import 'package:flutter/material.dart';

import 'package:counter_with_getx/counter_with_getx/app.dart';

/*
State Management
1: kereksiz ui lardy kaira kurba
2: widget daraktaryna kaalagan jerine datany jetkirip beret
3: logic kodtordu ui kodtordon bolup aluu
*/

/*
Getx [MVC] -> model-view-controller (web)
Mobx [MVVM] -> model-voiew-view-model (mobile)
Bloc [Bloc pattern] -> okuibuz
*/

void main() {
  runApp(const MyAppGetx());
}
