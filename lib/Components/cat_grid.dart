import 'package:flutter/material.dart';

import '../Models/models.dart';
import '../Styles/txt_styles.dart';
import 'cat_container.dart';



class CategoryGrid extends StatelessWidget {
  const CategoryGrid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 20, mainAxisSpacing: 20),
        itemCount: categories.length + 1,
        itemBuilder: (ctx, index) {
          return index < categories.length
              ? CategoryContainer(
                  category: categories[index],
                )
              : Container(
                  child: Center(
                      child: Text(
                    "Add",
                    style: titleStyle,
                  )),
                  decoration: BoxDecoration(),
                );
        });
  }
}

