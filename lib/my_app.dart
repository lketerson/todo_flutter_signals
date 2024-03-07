import 'package:flutter/material.dart';
import 'package:todo_list_app/app/views/todo_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          appBarTheme: AppBarTheme(backgroundColor: Colors.blueGrey[600])),
      home: TodoView(),
    );
  }
}
