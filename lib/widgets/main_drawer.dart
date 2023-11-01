import 'package:flutter/material.dart';
import 'package:mealapp/screens/filters_screen.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Colors.yellow,
            child: Text(
              'Cooking Up!',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          ListTile(
            leading: const Icon(
              Icons.restaurant,
              size: 26,
            ),
            title: const Text(
              'Meal',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
            ),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.settings,
              size: 26,
            ),
            title: const Text(
              'Filters',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
            ),
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(FiltersScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
