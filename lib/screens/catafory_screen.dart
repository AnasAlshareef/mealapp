import 'package:flutter/material.dart';
import 'package:mealapp/dummy_data.dart';
import '../widgets/catagories_items.dart';

class CastegoriesScreen extends StatelessWidget {
  const CastegoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(25),
      children: DUMMY_CATEGORIES
          .map(
            (catData) => CatagoryItem(catData.id!, catData.title! , catData.color),
          )
          .toList(),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
    );
  }
}
