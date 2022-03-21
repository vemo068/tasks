import 'package:flutter/material.dart';

import '../Components/cat_grid.dart';
import '../Components/profile_container.dart';
import '../Styles/txt_styles.dart';
import 'add_task_screen.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return AddTaskScreen();
                }));
              },
              icon: Icon(
                Icons.plus_one_outlined,
                color: Color(
                  (0xff135BFF),
                ),
              ),
            )
          ],
          elevation: 0,
          backgroundColor: Colors.white,
          title: Row(
            children: [
              ProfileContainer(),
              SizedBox(
                width: 10,
              ),
              Text(
                "Hi Username",
                style: titleStyle,
              )
            ],
          )),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Tasks",
              style: titleStyle,
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                child: CategoryGrid(),
              ),
            )
          ],
        ),
      ),
    );
  }
}