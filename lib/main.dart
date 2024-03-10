import 'package:flutter/material.dart';
import 'package:todo_list_app/app/shared/injector/dependencies.dart';
import 'package:todo_list_app/my_app.dart';

void main() {
  dependencieInjection();
  runApp(const MyApp());
}
