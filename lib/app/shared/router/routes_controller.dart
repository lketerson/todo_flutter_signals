import 'package:go_router/go_router.dart';
import 'package:todo_list_app/app/core/views/todo_view.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => TodoView(),
    ),
  ],
);
