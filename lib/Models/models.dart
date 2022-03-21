import 'package:flutter/material.dart';

class Category {
  final String name;
  final Color background;
  Category({required this.name, required this.background});
}

class Task {
  final String title;
  final String description;
  final String state;
  Task({required this.description, required this.state, required this.title});
}

class Worker{

  
}
String loremText =
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin vitae lobortis arcu. Maecenas vulputate nibh a orci rhoncus, non sollicitudin.";
List<Task> tasks = [
  Task(
      description:
          loremText,
      state: 's',
      title:  "Doing Task1"),
      Task(
      description:
          loremText,
      state: 's',
      title:  "Doing Task3"),
      Task(
      description:
          loremText,
      state: 'd',
      title:  "Doing Task5"),
      Task(
      description:
          loremText,
      state: 's',
      title:  "Doing Task7"),
      Task(
      description:
          loremText,
      state: 'd',
      title:  "Doing Task8"),
];

List<Category> categories = [
  Category(name: "Cat1", background: Color(0xfffde49a)),
  Category(name: "Cat2", background: Color(0xff9cd8fd)),
  Category(name: "Cat3", background: Color(0xffe69bfd)),
  Category(name: "Cat4", background: Color(0xffa3fc9c)),
  Category(name: "Cat5", background: Color(0xfffdbe9d)),
];
