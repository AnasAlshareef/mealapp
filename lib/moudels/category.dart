import 'package:flutter/material.dart';

class Category {
  final String? id;
  final String? title;
  final Color color;

  const Category(
      {required this.id, required this.title, this.color = Colors.orange});
}

Category c1 = const Category(id:'x1' , title: 'title',);