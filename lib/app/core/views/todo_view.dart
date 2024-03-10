import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';
import 'package:todo_list_app/app/core/controllers/todo_controllers.dart';
import 'package:todo_list_app/app/core/views/component/add_todo_component.dart';
import 'package:todo_list_app/app/core/views/component/todo_item_component.dart';

class TodoView extends StatelessWidget {
  const TodoView({super.key, required this.todoController});

  final TodoController todoController;

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
                  builder: (_) => AdicionarTodoComponent(
                        todoController: todoController,
                      )),
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
