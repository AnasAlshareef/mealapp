import 'package:flutter/material.dart';
import 'package:mealapp/widgets/meal_item.dart';
import '../dummy_data.dart';

class CatagoryMealScreen extends StatefulWidget {
  static const rouuteName = 'category_meals';

  const CatagoryMealScreen({Key? key}) : super(key: key);

  @override
  _CatagoryMealScreen createState() => _CatagoryMealScreen();
}

class _CatagoryMealScreen extends State<CatagoryMealScreen> {
  @override
  Widget build(BuildContext context) {
    final routearg =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final categoryid = routearg['id'];
    final categoryTitle = routearg['title'];
    final categoryMeal = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryid);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle!),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: categoryMeal[index].id!,
            imageUrl: categoryMeal[index].imageUrl!,
            title: categoryMeal[index].title!,
            duration: categoryMeal[index].duration,
            complexity: categoryMeal[index].complexity,
            affordability: categoryMeal[index].affordability,
          );
        },
        itemCount: categoryMeal.length,
      ),
    );
  }
}
