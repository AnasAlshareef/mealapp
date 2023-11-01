import 'package:flutter/material.dart';
import 'package:mealapp/dummy_data.dart';

class MealDetailScreen extends StatelessWidget {
  static const routeName = 'meal_detail';

  const MealDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)!.settings.arguments as String;
    final selectedMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);

    return Scaffold(
      appBar: AppBar(title: Text(selectedMeal.title!)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image.network(
                selectedMeal.imageUrl!,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: const Text(
                'Ingredients',
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              height: 170,
              width: 300,
              child: ListView.builder(
                itemBuilder: (ctx, index) => Card(
                  color: Theme.of(context).canvasColor,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5 , horizontal:10,),
                    child: Text(selectedMeal.ingredients[index]),
                  ),
                ),
                itemCount: selectedMeal.ingredients.length,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: const Text(
                'Steps',
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              height: 170,
              width: 300,
              child: ListView.builder(
                itemBuilder: (ctx, index) => Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        child: Text("#${index+1}"),
                      ),
                      title: Text(selectedMeal.steps[index]),
                    ),
                    const Divider(),
                  ],
                ),
                itemCount: selectedMeal.steps.length,
              ),
            ),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).pop(mealId);
        },
        child: const Icon(Icons.delete),
      ),
    );
  }
}
