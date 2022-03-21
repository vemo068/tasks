import 'package:flutter/material.dart';

import '../Models/models.dart';
import '../Screens/task_details.dart';

class TaskListTile extends StatelessWidget {
  final Task task;
  const TaskListTile({
    Key? key,
    required this.task,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(12),
      color: Colors.transparent,
      elevation: 5,
      child: ListTile(
        leading: Icon(Icons.track_changes),
        onTap: () {
          showDialog(
              context: context,
              builder: (_) {
                return TaskDetails(task: task);
              });
        },
        trailing: Icon(
          task.state == 's' ? Icons.circle_outlined : Icons.done,
          color: Colors.green,
        ),
        tileColor: Colors.white,
        contentPadding: EdgeInsets.all(8),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        title: Text(task.title),
        subtitle: Text(task.description),
      ),
    );
  }
}
