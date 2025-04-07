import 'package:flutter/material.dart';
import '../models/category.dart'; // Asume que tienes un modelo Category
import 'package:mealapp/screens/categorymealscreen.dart';
import 'package:mealapp/dummy_data.dart';

class CategoryItem extends StatelessWidget {
  final Category category;

  const CategoryItem({super.key, required this.category});

  void selectCategory(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => CategoryMealsScreen(
          category: category,
          availableMeals: dummyMeals,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: category.color.withOpacity(0.3),
      borderRadius: BorderRadius.circular(16.0),
      child: Container(
        decoration: BoxDecoration(
          color: category.color,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Center(
          child: Text(
            category.title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}