import 'package:flutter/material.dart';

import '../Models/models.dart';
import '../Styles/txt_styles.dart';

class TaskDetails extends StatelessWidget {
  final Task task;
  const TaskDetails({Key? key, required this.task}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      backgroundColor: Colors.white,
      child: SizedBox(
        height: 300,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                task.title,
                style: titleStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
