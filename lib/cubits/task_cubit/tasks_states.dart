import 'package:to_do_app/models/task_model.dart';

class TasksStates {}

class TasksInitial extends TasksStates {}

class TasksLoading extends TasksStates {}

class TasksSuccess extends TasksStates {
  final List<TaskModel> tasks;

  TasksSuccess({required this.tasks});
}

class TasksError extends TasksStates {
  final String message;

  TasksError({required this.message});
}
