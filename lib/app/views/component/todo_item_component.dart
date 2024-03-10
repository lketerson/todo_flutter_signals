import 'package:flutter/material.dart';
import 'package:todo_list_app/app/controllers/todo_controllers.dart';
import 'package:todo_list_app/app/models/todo_model.dart';

class TodoItemComponent extends StatelessWidget {
  final TodoModel item;
  final TodoController todoController;
  const TodoItemComponent(
      {required this.item, required this.todoController, super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Checkbox(
        value: item.completado,
        onChanged: (_) => todoController.atualizarTodoParaCompletado(item),
      ),
      title: Text(
        item.titulo,
        style: const TextStyle(
            color: Colors.white, fontWeight: FontWeight.w600, fontSize: 16),
      ),
      subtitle: Text(
        item.descricao ?? "",
        style: const TextStyle(color: Colors.white, fontSize: 10),
      ),
      trailing: IconButton(
        icon: const Icon(
          Icons.remove,
          color: Colors.red,
        ),
        onPressed: () => todoController.removerTodo(item),
      ),
    );
  }
}
