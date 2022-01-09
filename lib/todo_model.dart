import 'package:flutter/widgets.dart';
import 'package:provider1/task_model.dart';
import 'package:provider/provider.dart';

class TodoModel extends ChangeNotifier {
  List<TaskModel> taskList = [];

  addTaskList() {
    TaskModel taskModel = TaskModel('Title of ${taskList.length}',
        'details  of the to do list ${taskList.length}');
    taskList.add(taskModel);
    notifyListeners();
  }
}