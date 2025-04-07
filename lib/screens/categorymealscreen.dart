import 'package:flutter/material.dart';
import '/models/category.dart';
import '/models/meal.dart';
import 'package:mealapp/components/mealitem.dart';

class CategoryMealsScreen extends StatelessWidget {
  final Category category;
  final List<Meal> availableMeals;

  const CategoryMealsScreen({
    super.key,
    required this.category,
    required this.availableMeals,
  });

  @override
  Widget build(BuildContext context) {
    // Filtrar las comidas de la categoría seleccionada
    final categoryMeals = availableMeals.where((meal) {
      return meal.categories.contains(category.id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(category.title,style: TextStyle(color: Colors.white),),backgroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemCount: categoryMeals.length,
        itemBuilder: (ctx, index) {
          return MealItem(meal: categoryMeals[index]);
        },
      ),
    );
  }
}