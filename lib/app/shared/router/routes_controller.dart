import 'package:go_router/go_router.dart';
import 'package:todo_list_app/app/core/controllers/todo_controllers.dart';
import 'package:todo_list_app/app/core/views/todo_view.dart';
import 'package:todo_list_app/app/shared/injector/dependencies.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => TodoView(
        todoController: denpendenci.get<TodoController>(),
      ),
    ),
  ],
);
