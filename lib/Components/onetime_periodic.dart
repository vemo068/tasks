import 'package:flutter/material.dart';

import '../Models/models.dart';
import 'every_period.dart';


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
