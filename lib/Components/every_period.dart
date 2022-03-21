import 'package:flutter/material.dart';

import '../Models/models.dart';
import 'dialog_periodic.dart';
import 'tsk_txtfield.dart';

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
