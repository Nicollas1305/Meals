import 'package:flutter/material.dart';
import 'package:meals/screens/categories_meals_screen.dart';
import 'package:meals/screens/meal_detail_screen.dart';
import 'package:meals/utils/app_routes.dart';
import 'screens/categories_screens.dart';
import 'screens/tabs_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'DeliMeals',
        theme: ThemeData(
          primarySwatch: Colors.orange,
          accentColor: Colors.amber,
          fontFamily: 'Raleway',
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          textTheme: ThemeData.light().textTheme.copyWith(
                titleMedium: const TextStyle(
                  fontSize: 20,
                  fontFamily: 'RobotoCondensed',
                ),
              ),
        ),
        routes: {
          AppRoutes.HOME: (ctx) => TabsScreen(),
          AppRoutes.CATEGORIES_MEALS: (ctx) => CategoriesMealsScreen(),
          AppRoutes.MEAL_DETAIL: (ctx) => MealDetailScreen(),
        });
  }
}
