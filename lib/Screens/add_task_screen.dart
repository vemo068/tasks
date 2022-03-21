import 'package:flutter/material.dart';
import 'package:task_manager_app/Styles/colors.dart';

import '../Components/cat_slot.dart';
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

enum TaskType { onTime, periodic }
enum PeriodType { daily, weekly, monthly }
PeriodType? periodType_group = PeriodType.daily;
TaskType? group = TaskType.onTime;
double chight = 0;

class OnetimeOrPeriodic extends StatefulWidget {
  const OnetimeOrPeriodic({Key? key}) : super(key: key);

  @override
  State<OnetimeOrPeriodic> createState() => _OnetimeOrPeriodicState();
}

class _OnetimeOrPeriodicState extends State<OnetimeOrPeriodic> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                Text("One Tyme"),
                Radio<TaskType>(
                    value: TaskType.onTime,
                    groupValue: group,
                    onChanged: (T) {
                      setState(() {
                        chight = 0;
                        group = T;
                      });
                    }),
              ],
            ),
            Row(
              children: [
                Text("Periodic"),
                Radio<TaskType>(
                    value: TaskType.periodic,
                    groupValue: group,
                    onChanged: (T) {
                      setState(() {
                        chight = 150;
                        group = T;
                      });
                    }),
              ],
            ),
          ],
        ),
        AnimatedContainer(
          decoration: BoxDecoration(
              color: Colors.grey[200], borderRadius: BorderRadius.circular(12)),
          padding: EdgeInsets.all(12),
          duration: Duration(milliseconds: 200),
          width: double.infinity,
          height: chight,
          child: group == TaskType.periodic
              ? Column(children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Text("daily"),
                            Radio(
                              value: PeriodType.daily,
                              groupValue: periodType_group,
                              onChanged: (PeriodType? t) {
                                setState(() {
                                  periodType_group = t;
                                });
                              },
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text("weekly"),
                            Radio(
                              value: PeriodType.weekly,
                              groupValue: periodType_group,
                              onChanged: (PeriodType? t) {
                                setState(() {
                                  periodType_group = t;
                                });
                              },
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text("monthly"),
                            Radio(
                              value: PeriodType.monthly,
                              groupValue: periodType_group,
                              onChanged: (PeriodType? t) {
                                setState(() {
                                  periodType_group = t;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  EveryPeriodic(
                    periodType: periodType_group,
                  )
                ])
              : null,
        )
      ],
    );
  }
}

class EveryPeriodic extends StatelessWidget {
  final PeriodType? periodType;
  const EveryPeriodic({Key? key, required this.periodType}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String p = "";
    if (periodType == PeriodType.daily) {
      p = "days";
    } else if (periodType == PeriodType.monthly) {
      p = "months";
    } else if (periodType == PeriodType.weekly) {
      p = "weeks";
    }
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("every"),
          SizedBox(width: 50, child: TskTextField(hint: "n")),
          Text(p),
          periodType == PeriodType.weekly
              ? IconButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (_) {
                          return ListDialog(list: days);
                        });
                  },
                  icon: Icon(Icons.settings),
                )
              : periodType == PeriodType.monthly
                  ? IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.settings),
                    )
                  : SizedBox(),
        ],
      ),
    );
  }
}

class ListDialog extends StatefulWidget {
  final List<Object> list;
  const ListDialog({Key? key, required this.list}) : super(key: key);

  @override
  State<ListDialog> createState() => _ListDialogState(list);
}

class _ListDialogState extends State<ListDialog> {
  final List listt;
  _ListDialogState(this.listt);
  bool? check = false;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: SizedBox(
        width: 300,
        height: 300,
        child: ListView.builder(
          itemCount: widget.list.length,
          itemBuilder: (context, index) {
            return CheckboxListTile(
                title: Text(listt[index].toString()),
                value: check,
                onChanged: (ischeck) {
                  setState(() {
                    check = ischeck;
                  });
                });
          },
        ),
      ),
    );
  }
}

var days = ['sat', 'mon', 'thi', 'wed'];
