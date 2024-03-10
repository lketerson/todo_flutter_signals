import 'package:get_it/get_it.dart';
import 'package:todo_list_app/app/core/controllers/todo_controllers.dart';

GetIt get denpendenci => GetIt.I;

Future<void> dependencieInjection() async {
  denpendenci.registerLazySingleton<TodoController>(() => TodoController());
}
