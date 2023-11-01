import 'package:flutter/material.dart';
import 'package:mealapp/widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static var routeName;

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  late bool isGlutenFree = false;
  late bool isLactoseFree = false;
  late bool isvegan = false;
  late bool isvegetarian = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Filters'),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Text('Adjust your meal selection'),
          ),
          Expanded(
            child: ListView(
              children: [
                SwitchListTile(
                  title: Text('Gluten-free'),
                  value: isGlutenFree,
                  onChanged: (newValue) {
                    setState(() {
                      isGlutenFree = newValue;
                    });
                  },
                  subtitle: Text("only includes glutenfree meals"),
                )
              ],
            ),
          ),
        ],
      ),
      drawer: MainDrawer(),
    );
  }
}
