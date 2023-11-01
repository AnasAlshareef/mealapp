import 'package:flutter/material.dart';
import 'package:mealapp/screens/catafory_screen.dart';
import 'package:mealapp/screens/favorite_screen.dart';
import 'package:mealapp/widgets/main_drawer.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);


  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {

  final List<Map<String, Object>> _pages = [
    {
      'page':const CastegoriesScreen(),
      'title':'Categories'
    },
    {
      'page':const FavoriteScreen(),
      'title':'Your Favorites'
    }
  ];






  int _selectPageIndex = 0;
  void _selectPage(int value) {
    setState(() {
      _selectPageIndex= value;

    });
  }

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('${_pages[_selectPageIndex]['title']}'),),
      body: _pages[_selectPageIndex]['page']as Widget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Theme.of(context).canvasColor,
        unselectedItemColor: Colors.white  ,
        currentIndex: _selectPageIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: "Category"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: "Favorites",
          ),
        ],
      ),
      drawer: MainDrawer(),
    );
  }


}
