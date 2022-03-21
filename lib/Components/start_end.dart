import 'package:flutter/material.dart';

import '../Styles/txt_styles.dart';
import 'tsk_txtfield.dart';


class StartEnd extends StatelessWidget {
  const StartEnd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          width: 100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Start",
                style: bodyStyle,
              ),
              SizedBox(
                height: 5,
              ),
              TskTextField(
                hint: "Start",
              ),
            ],
          ),
        ),
        SizedBox(
          width: 100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "End",
                style: bodyStyle,
              ),
              SizedBox(
                height: 5,
              ),
              TskTextField(
                hint: "End",
              ),
            ],
          ),
        )
      ],
    );
  }
}