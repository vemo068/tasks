import 'package:flutter/material.dart';

import '../Models/models.dart';



class CategorySlot extends StatelessWidget {
  final Category category;
  final bool isSelected;
  const CategorySlot(
      {Key? key, this.isSelected = false, required this.category})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
            color: category.background,
            borderRadius: BorderRadius.circular(8),
            border: isSelected ? Border.all(color: Colors.blue) : null),
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        child: Text(
          category.name,
          style: TextStyle(
              color: isSelected ? Colors.black : Colors.black.withOpacity(0.65),
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
