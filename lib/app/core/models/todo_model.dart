// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:uuid/uuid.dart';

class TodoModel {
  late final String id;
  final String titulo;
  final String? descricao;
  final bool completado;

  TodoModel(
      {String? idC,
      required this.titulo,
      this.descricao,
      this.completado = false}) {
    id = idC ?? const Uuid().v4();
  }

  TodoModel copyWith({
    String? id,
    String? titulo,
    String? descricao,
    bool? completado,
  }) {
    return TodoModel(
      idC: id ?? this.id,
      titulo: titulo ?? this.titulo,
      descricao: descricao ?? this.descricao,
      completado: completado ?? this.completado,
    );
  }
}
