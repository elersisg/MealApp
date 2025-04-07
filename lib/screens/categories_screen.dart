import 'package:flutter/material.dart';
import '/models/category.dart';
import 'package:mealapp/components/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  final List<Category> categories;

  const CategoriesScreen({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pick your Category',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.black,
        child: GridView.builder(
          padding: const EdgeInsets.all(16.0),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Dos columnas
            childAspectRatio:
                3 / 2, // Relación de aspecto para los contenedores
            crossAxisSpacing: 16.0, // Espacio horizontal entre contenedores
            mainAxisSpacing: 16.0, // Espacio vertical entre contenedores
          ),
          itemCount: categories.length,
          itemBuilder: (context, index) {
            final category = categories[index];
            return CategoryItem(category: category);
          },
        ),
      ),
    );
  }
}


