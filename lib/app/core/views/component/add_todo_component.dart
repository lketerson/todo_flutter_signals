import 'package:flutter/material.dart';
import 'package:todo_list_app/app/core/controllers/todo_controllers.dart';
import 'package:todo_list_app/app/core/models/todo_model.dart';

class AdicionarTodoComponent extends StatefulWidget {
  final TodoController todoController;
  const AdicionarTodoComponent({super.key, required this.todoController});

  @override
  State<AdicionarTodoComponent> createState() => _AdicionarTodoComponentState();
}

class _AdicionarTodoComponentState extends State<AdicionarTodoComponent> {
  final tituloInput = TextEditingController();
  final descricaoInput = TextEditingController();

  final formKey = GlobalKey<FormState>();

  void adicionarTodo() {
    if (formKey.currentState!.validate()) {
      final novoTodo =
          TodoModel(titulo: tituloInput.text, descricao: descricaoInput.text);
      widget.todoController.adicionarTodo(novoTodo);
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              TextFormField(
                controller: tituloInput,
                validator: (String? titulo) {
                  if (titulo == null || titulo.isEmpty) {
                    return "Insira um titulo";
                  }
                  return null;
                },
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: "Titulo"),
              ),
              const SizedBox(
                height: 16,
              ),
              TextFormField(
                controller: descricaoInput,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: "Descricao"),
              ),
              const SizedBox(
                height: 16,
              ),
              ElevatedButton(
                  onPressed: adicionarTodo, child: const Text("Adicionar"))
            ],
          ),
        ));
  }
}
