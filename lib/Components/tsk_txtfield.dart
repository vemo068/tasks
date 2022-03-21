import 'package:flutter/material.dart';


class TskTextField extends StatelessWidget {
  final TextEditingController? tskController;
  final String hint;
  final int maxlines;
  const TskTextField(
      {Key? key, this.tskController, this.maxlines = 1, required this.hint})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextField(
        maxLines: maxlines,
        decoration: InputDecoration(
            hintText: hint,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))),
      ),
    );
  }
}
