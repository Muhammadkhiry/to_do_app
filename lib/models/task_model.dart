class TaskModel {
  final String title, id, date;

  final bool isDone;

  TaskModel({
    required this.title,
    required this.date,
    required this.id,
    this.isDone = false,
  });
}
