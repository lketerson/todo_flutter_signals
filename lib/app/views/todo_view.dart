import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';
import 'package:todo_list_app/app/controllers/todo_controllers.dart';
import 'package:todo_list_app/app/views/component/add_todo_component.dart';
import 'package:todo_list_app/app/views/component/todo_item_component.dart';

final todoController = TodoController();

class TodoView extends StatelessWidget {
  const TodoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[400],
      appBar: AppBar(
        title: const Text('Todos'),
        actions: [
          IconButton(
              onPressed: () => showModalBottomSheet(
                  context: context,
                  builder: (_) => const AdicionarTodoComponent()),
              icon: const Icon(Icons.add))
        ],
      ),
      body: Watch((context) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Center(
                child: Text(
                  todoController.todosStateString.value,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ),
            Expanded(
                child: ListView.builder(
              itemCount: todoController.todos.length,
              itemBuilder: (_, int index) {
                final item = todoController.todos[index];
                return TodoItemComponent(
                  item: item,
                  todoController: todoController,
                );
              },
            ))
          ],
        );
      }),
    );
  }
}
