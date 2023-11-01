import 'package:flutter/material.dart';
import 'package:mealapp/screens/catagory_meal_screen.dart';
import 'package:mealapp/screens/filters_screen.dart';
import 'package:mealapp/screens/meal_detail_screen.dart';
import 'package:mealapp/screens/tabs_screen.dart';

void main() {
  runApp(  MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.purple)
            .copyWith(secondary: Colors.amber),
      ),
      //home: MyHomePage(),
      routes: {
        '/': (context)=> TabsScreen(),
        CatagoryMealScreen.rouuteName: (context) => const CatagoryMealScreen(),
        MealDetailScreen.routeName: (context) => const MealDetailScreen(),
        FiltersScreen.routeName:(context)=> FiltersScreen(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meal App'),
      ),
    );
  }
}
