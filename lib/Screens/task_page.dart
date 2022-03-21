import 'package:flutter/material.dart';

import '../Components/task_tile.dart';
import '../Models/models.dart';
import '../Styles/txt_styles.dart';



class TasksScreen extends StatelessWidget {
  final Category category;
  const TasksScreen({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
        tag: category.name,
        child: Scaffold(
            backgroundColor: category.background,
            body: SafeArea(
              child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            category.name,
                            style: titleStyle,
                          ),
                          IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(
                                Icons.close,
                                color: Colors.black,
                              ))
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Expanded(
                        child: SizedBox(
                          child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: tasks.length,
                            itemBuilder: (_, index) {
                              return Column(
                                children: [
                                  TaskListTile(
                                    task: tasks[index],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  )
                                ],
                              );
                            },
                          ),
                        ),
                      )
                    ],
                  )),
            )));
  }
}
