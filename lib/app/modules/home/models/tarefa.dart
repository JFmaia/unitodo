// To parse this JSON data, do
//
//     final tarefas = tarefasFromMap(jsonString);

import 'dart:convert';

class Tarefa {
  Tarefa({
    this.id,
    this.descricao,
    this.createdAt,
    this.check,
  });

  final String id;
  final String descricao;
  final DateTime createdAt;
  final bool check;

  Tarefa copyWith({
    String id,
    String descricao,
    DateTime createdAt,
    bool check,
  }) =>
      Tarefa(
        id: id ?? this.id,
        descricao: descricao ?? this.descricao,
        createdAt: createdAt ?? this.createdAt,
        check: check ?? this.check,
      );

  factory Tarefa.fromJson(String str) => Tarefa.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Tarefa.fromMap(Map<String, dynamic> json) => Tarefa(
        id: json["id"],
        descricao: json["descricao"],
        createdAt: DateTime.parse(json["created_at"]),
        check: json["check"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "descricao": descricao,
        "created_at": createdAt.toIso8601String(),
        "check": check,
      };
  static List<Tarefa> fromJsonList(List list) {
    if (list == null) return null;
    return list.map<Tarefa>((item) => Tarefa.fromMap(item)).toList();
  }
}
