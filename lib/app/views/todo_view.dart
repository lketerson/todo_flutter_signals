import 'package:flutter/material.dart';
import 'package:todo_list_app/app/controllers/todo_controllers.dart';
import 'package:todo_list_app/app/views/component/add_todo_component.dart';

final todoController = TodoController();

class TodoView extends StatelessWidget {
  const TodoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todos'),
        actions: [
          IconButton(
              onPressed: () => showModalBottomSheet(
                  context: context, builder: (_) => AdicionarTodoComponent()),
              icon: Icon(Icons.add))
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8),
            child: Text(""),
          )
        ],
      ),
    );
  }
}
