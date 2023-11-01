import 'package:flutter/material.dart';
import 'package:mealapp/screens/meal_detail_screen.dart';
import '../moudels/meal.dart';

class MealItem extends StatelessWidget {
  final String imageUrl;
  final String id;
  final String title;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;

  const MealItem({Key? key,
    required this.id,
    required this.imageUrl,
    required this.title,
    required this.duration,
    required this.complexity,
    required this.affordability,
  }) : super(key: key);

  String get complextiyText {
    switch (complexity) {
      case Complexity.Simple:
        return 'Simple';

      case Complexity.Challenging:
        return 'Challanging';

      case Complexity.Hard:
        return 'Hard';

      default:
        return 'unknown';

    }
  }

  String get affordabilityText {
    switch (affordability) {
      case Affordability.Affordable:
        return 'Affordable';

      case Affordability.Pricey:
        return 'Pricey';
      case Affordability.Luxurious:
        return 'Luxurious';

      default:
        return 'unknown';

    }
  }

  void selectMeal(BuildContext ctx) {
    Navigator.of(ctx)
        .pushNamed(
          MealDetailScreen.routeName,
          arguments: id,
        );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () => selectMeal(context),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 4,
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                    child: Image.network(
                      imageUrl,
                      height: 300,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    right: 10,
                    child: Container(
                      color: Colors.black45,
                      padding:
                          const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                      width: 220,
                      child: Text(
                        title,
                        style: const TextStyle(fontSize: 28, color: Colors.white),
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.schedule),
                        const SizedBox(
                          width: 6,
                        ),
                        Text('$duration min'),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(Icons.work),
                        const SizedBox(
                          width: 6,
                        ),
                        Text(complextiyText),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(Icons.attach_money),
                        const SizedBox(
                          width: 6,
                        ),
                        Text(affordabilityText),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
