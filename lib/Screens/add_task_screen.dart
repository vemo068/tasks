import 'package:flutter/material.dart';
import 'package:task_manager_app/Styles/colors.dart';

import '../Components/cat_slot.dart';
import '../Components/dialog_periodic.dart';
import '../Components/onetime_periodic.dart';
import '../Components/tsk_txtfield.dart';
import '../Models/models.dart';
import '../Styles/txt_styles.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MaterialButton(
        height: 65,
        minWidth: double.infinity,
        color: kcAccentColor,
        onPressed: () {},
        child: Text(
          'Create',
          style: titleStyle.copyWith(color: Colors.white),
        ),
      ),
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.close,
                  color: Colors.black,
                ))
          ],
          title: Text(
            "Create Task",
            style: TextStyle(color: Colors.black),
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Task Title",
                style: titleStyle,
              ),
              SizedBox(
                height: 10,
              ),
              TskTextField(
                hint: "Title",
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Category",
                style: titleStyle,
              ),
              SizedBox(
                height: 10,
              ),
              Wrap(
                  spacing: 12,
                  runSpacing: 10,
                  children: categories
                      .map((i) => CategorySlot(
                            category: i,
                          ))
                      .toList()),
              Text(
                "Task Type",
                style: titleStyle,
              ),
              SizedBox(
                height: 10,
              ),
              OnetimeOrPeriodic(),
              SizedBox(
                height: 20,
              ),
              //StartEnd(),
              SizedBox(
                height: 20,
              ),
              Text(
                "Participants",
                style: titleStyle,
              ),
              SizedBox(
                height: 10,
              ),
              DropdownButton(
                  focusColor: Colors.white,
                  isExpanded: true,
                  items: [
                    DropdownMenuItem(
                      value: "fffff",
                      child: Text('frf'),
                    ),
                    DropdownMenuItem(
                      value: "fffff",
                      child: Text('frf'),
                    ),
                    DropdownMenuItem(
                      value: "fffff",
                      child: Text('frf'),
                    )
                  ],
                  onChanged: (T) {}),
              SizedBox(
                height: 20,
              ),
              Text(
                "Description",
                style: titleStyle,
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                height: 100,
                child: TskTextField(
                  hint: "Description",
                  maxlines: 3,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


