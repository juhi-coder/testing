class Todo {
  late final int id;
  late final int userId;
  late final String title;
  final bool? complete;

  Todo(
      {required this.id,
      required this.userId,
      required this.title,
      this.complete});

  factory Todo.fromJson(Map<String, dynamic> json) {
    return Todo(
      id: json['id'],
      userId: json['userId'],
      title: json['title'],
      complete: json['completed'],
    );
  }
}
