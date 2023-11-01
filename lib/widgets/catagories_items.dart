import 'package:flutter/material.dart ';
import '../screens/catagory_meal_screen.dart';

class CatagoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  const CatagoryItem(this.id, this.title, this.color, {Key? key}) : super(key: key);

  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      CatagoryMealScreen.rouuteName,
      arguments: {
        'id' : id,
        'title': title,
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        splashColor: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(30),
        onTap: () => selectCategory(context),
        child: Container(
          padding: const EdgeInsets.all(15),
          child: Text(title),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  color.withOpacity(0.5),
                  color,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              color: color,
              borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
