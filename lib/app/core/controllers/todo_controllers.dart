import 'package:signals/signals.dart';
import 'package:todo_list_app/app/core/models/todo_model.dart';

class TodoController {
  final todos = <TodoModel>[].toSignal();

  late final todosStateString = computed(() {
    final todosNaoCompletados = todos.where((todo) => !todo.completado);

    if (todos.isEmpty) return "Nenhuma tarefa encontrada";
    if (todosNaoCompletados.isEmpty) return "Todas as tarefas estão em dia";
    return "${todosNaoCompletados.length} tarefa(s) pendente(s)";
  });

  void adicionarTodo(TodoModel todo) {
    todos.add(todo);
  }

  void removerTodo(TodoModel todo) {
    todos.removeWhere((todoDaLista) => todoDaLista.id == todo.id);
  }

  void atualizarTodoParaCompletado(TodoModel todoAtualizar) {
    todos.value = todos.map((todo) {
      if (todo.id == todoAtualizar.id) {
        return todo.copyWith(completado: !todoAtualizar.completado);
      }
      return todo;
    }).toList();
  }
}
