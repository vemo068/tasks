import 'package:flutter/material.dart';

import '../Models/models.dart';
import '../Screens/task_page.dart';
import '../Styles/txt_styles.dart';


class CategoryContainer extends StatelessWidget {
  final Category category;
  const CategoryContainer({
    Key? key,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) {
          return TasksScreen(category: category);
        }));
      },
      child: Hero(
        tag: category.name,
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Text(
            category.name,
            style: titleStyle,
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: category.background),
        ),
      ),
    );
  }
}
