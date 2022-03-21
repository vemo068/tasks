import 'package:flutter/material.dart';



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
